#ビルド
build:
    docker build --platform linux/amd64 -t jokerthewild/production-server .

#クリーンビルド
clean_build:
    docker build --no-cache --platform linux/amd64 -t jokerthewild/production-server .

#ログイン
login:
  docker login

#DockerHubにpush
push:login
    docker push jokerthewild/production-server:latest
