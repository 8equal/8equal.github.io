# 8equal official

## setup

gem は `vendor/bundle` 以下にインストールする

```console
$ bundle install --path vendor/bundle
```

ページ作成は `develop` ブランチで行う

```console
$ git checkout develop
```

## create

ローカルサーバー立ち上げ

```console
$ middleman
```

__http://localhost:4567__

[Middleman Information](http://localhost:4567/__middleman/)

## build & deploy

__ref: https://middlemanapp.com/jp/basics/build_and_deploy__

```console
$ middleman build [--clean]
$ middleman deploy [--build-before]
```

