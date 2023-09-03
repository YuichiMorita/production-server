# Motherサーバー

ローカルのDocker環境でサーバー用バイナリをコンパイルする為のDockerfile

## Author

Yuichi Morita (info@reju.jp)

## 構築方法

```bash
docker build --no-cache -t jokerthewild/production-server .
docker images
docker run -it image
docker exec -it コンテナ名 bash
```

## DockerHUBへ登録

```bash
docker login
docker push jokerthewild/production-server:latest
```

