#!/bin/bash

if [[ ! -e /etc/debian_version ]]; then
  cat << EOS 1>&2
このスクリプトは Debian>=Jessie/Raspbian>=Jessie 以外の環境では動作確認を行っていません
スクリプトの内容を開発環境に合わせて変更して実行してください
EOS
  return 1
fi

if [[ -z $RUBOTY_ENV ]]; then
  cat << EOS 1>&2

# 環境変数 "RUBOTY_ENV" を指定して実行してください

# 開発環境の場合
RUBOTY_ENV=development . ./init.sh

# 本番環境の場合
RUBOTY_ENV=production . ./init.sh

EOS
  return 1
fi

sudo aptitude update
sudo aptitude install -y git vim ruby ruby-dev
sudo gem update
sudo gem install bundler --verbose

if [[ $RUBOTY_ENV == "development" ]]; then
  [[ $(getent passwd vagrant) ]] && vendor_path=~/bundles/kani-bot || vendor_path=vendor/bundle
  bundle install --path $vendor_path --without production
elif [[ $RUBOTY_ENV == "production" ]]; then
  sudo aptitude install -y redis-server
  [[ $(getent passwd pi) ]] && ruboty_user=pi || ruboty_user=$USER
  sudo chown $ruboty_user.$ruboty_user -R /usr/local/src/kani-bot
  bundle install --path vendor/bundle --without development
  sudo cp systemd/kani-bot.service /lib/systemd/system/
  sudo chown root.root /lib/systemd/system/kani-bot.service
  sudo chmod 644 /lib/systemd/system/kani-bot.service
  sudo sed -i s/^User=/User=$ruboty_user/ /lib/systemd/system/kani-bot.service
  sudo systemctl daemon-reload
fi
