## 初期セットアップ方法
```
docker-compose build
docker-compose up -d
```

## composerインストールの確認
```
docker-compose exec php composer --version
```

## Laravelインストール
```
docker-compose exec php laravel new <your-pj-name>
```

## nginxのルートディレクトリ変更
```
root /opt/code/<your-pj-name>/public;
```

## nginx reload
```
nginx -s reload etc...
```

## PDOを通す為に、.envファイルを変更
```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=root
DB_USERNAME=root
DB_PASSWORD=root
```

## migrate
```
docker-compose exec php php ./sample/artisan migrate
```
