#ビルド
build:
    docker build --no-cache --platform linux/amd64 -t jokerthewild/production-server .

#ログイン
login:
  docker login

#DockerHubにpush
push:login
    docker push jokerthewild/production-server:latest
