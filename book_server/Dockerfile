# 
FROM dart:stable AS build

WORKDIR /app

COPY pubspec.* .
RUN dart pub get

COPY .dart_frog .dart_frog
COPY lib ./lib
COPY routes ./routes
COPY pubspec.yaml .

RUN dart pub global activate dart_frog_cli
RUN dart pub global run dart_frog_cli:dart_frog build
RUN dart pub get --offline

RUN apt-get update && apt-get install -y ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN apt-get install -y nodejs npm

COPY node_modules ./node_modules
COPY prisma ./prisma
COPY package.json .

RUN rm -rf /app/lib/src/generated
RUN npx prisma generate
RUN dart run build_runner build
RUN dart_frog build
RUN mkdir -p /app/bin
RUN dart compile exe build/bin/server.dart -o /app/bin/server

EXPOSE 8080/tcp

CMD ["/app/bin/server"]
