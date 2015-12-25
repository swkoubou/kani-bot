# kani-bot
chatterbot for swkoubou

## 導入

### 開発環境（Vagrant）
```
git clone https://github.com/swkoubou/kani-bot.git <clone先ディレクトリ>
cd <clone先ディレクトリ>
vagrant up; vagrant ssh
cd /vagrant
```

/vagrant/kani-bot/.env を作成する
.env に必要な環境変数を追記していく

```
echo 'RUBOTY_ENV="development"' > .env
bundle exec ruboty --dotenv # ruboty の起動
```

### 開発環境（Debian >= Jessie）
```
git clone https://github.com/swkoubou/kani-bot.git <clone先ディレクトリ>
cd <clone先ディレクトリ>
RUBOTY_ENV=development . ./init.sh
```

<clone先ディレクトリ>/.env を作成する  
.env に必要な環境変数を追記していく

```
echo 'RUBOTY_ENV="development"' > .env
bundle exec ruboty --dotenv # ruboty の起動
```

### 本番環境（Raspbian）
```
sudo git clone https://github.com/swkoubou/kani-bot.git /usr/local/src/kani-bot
cd /usr/local/src/kani-bot
RUBOTY_ENV=production . ./init.sh
```

/usr/local/src/kani-bot/.env を作成する  
.env に必要な環境変数を追記していく

```
echo 'RUBOTY_ENV="production"' > /usr/local/src/kani-bot/.env
```

追記したら以下のコマンドで bot を起動する

```
sudo systemctl enable kani-bot.service
sudo systemctl start kani-bot.service
```

## プラグイン開発

### 参照URL
- [Ruboty の Plugin のつくりかた](http://qiita.com/tbpgr/items/8a2a3cda68770f91eb4f)
- [Ruboty Plugin を RubyGems に公開せずに利用する](http://qiita.com/tbpgr/items/e3c6544e6bd9533bc71f)

基本的にこのBOTだけで使用するプラグインは`plugins`ディレクトリに作成する  
`bundle gem` でプラグインのひな形を作る  
この方法でひな形を作った場合`.git`と`.gitignore`がひな形内に自動的に作成されるので削除する

```
cd plugins
bundle gem <プラグイン名>(慣習的に ruboty- から始まる名前)
```

ひな形を作ったら上記URLを参照してプラグイン開発を行う  
動作確認（インストール）するために以下の内容を`Gemfile`に追記する

```
gem "<プラグイン名>", :path => "plugins/<プラグイン名>"
```

以下のコマンドでインストールする

```
bundle install
```

動作確認をする

```
bundle exec ruboty
bundle exec ruboty --dotenv # .env 内で環境変数を設定する場合
```
