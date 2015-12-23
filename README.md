# kani-bot
chatterbot for swkoubou

## 導入

### 開発環境（Vagrant）
```
git clone https://github.com/swkoubou/kani-bot.git <clone先ディレクトリ>
cd <clone先ディレクトリ>
vagrant up; vagrant ssh
cd /vagrant
# /vagrant/kani-bot/.env を作成する
# .env に必要な環境変数を追記していく
echo 'RUBOTY_ENV="development"' > /vagrant/kani-bot/.env
bundle exec ruboty --dotenv # ruboty の起動
```

### 開発環境（Debian）
```
git clone https://github.com/swkoubou/kani-bot.git <clone先ディレクトリ>
cd <clone先ディレクトリ>
RUBOTY_ENV=development . ./init.sh
# <clone先ディレクトリ>/.env を作成する
# .env に必要な環境変数を追記していく
echo 'RUBOTY_ENV="development"' > /vagrant/kani-bot/.env
bundle exec ruboty --dotenv # ruboty の起動
```

### 本番環境（Raspbian）
```
sudo git clone https://github.com/swkoubou/kani-bot.git /usr/local/src/kani-bot
cd /usr/local/src/kani-bot
RUBOTY_ENV=production . ./init.sh
# /usr/local/src/kani-bot/.env を作成する
# .env に必要な環境変数を追記していく
echo 'RUBOTY_ENV="production"' > /usr/local/src/kani-bot/.env
# 追記したら以下のコマンドで bot を起動する
sudo systemctl enable kani-bot.service
sudo systemctl start kani-bot.service
```
