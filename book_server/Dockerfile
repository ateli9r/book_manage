# # FROM dart:stable AS build
# # FROM dart:stable AS builder
# # FROM node:latests AS builder2

# FROM dart:stable
# # FROM dart:stable AS builder

# WORKDIR /app

# # Resolve app dependencies.
# COPY pubspec.* ./
# # COPY package.* ./

# RUN dart pub get

# # Copy app source code and AOT compile it.
# COPY . .

# # Generate a production build.
# RUN dart pub global activate dart_frog_cli
# # RUN dart pub global activate orm
# RUN dart pub global run dart_frog_cli:dart_frog build

# # Ensure packages are still up-to-date if anything has changed.
# RUN dart pub get --offline

# # 
# # RUN dart pub add orm
# # RUN dart pub add build_runner -d
# # RUN dart pub add json_serializable -d

# # RUN dart pub add orm
# RUN dart compile exe build/bin/server.dart -o build/bin/server

# # Build minimal serving image from AOT-compiled `/server` and required system
# # libraries and configuration files stored in `/runtime/` from the build stage.
# FROM scratch
# COPY --from=build /runtime/ /
# COPY --from=build /app/build/bin/server /app/bin/
# # Uncomment the following line if you are serving static files.
# # COPY --from=build /app/build/public /public/
# # COPY --from=build /app/build/prisma /prisma/

# # FROM builder2

# # FROM node:latest
# # COPY package.* ./
# # RUN npm install
# # RUN npx prisma generate

# # RUN dart run build_runner build


# EXPOSE 8080

# # Start the server.
# CMD ["/app/bin/server"]


# FROM dart:stable
# FROM dart:stable as builder

# WORKDIR /app


# FROM ubuntu:18.04

# RUN \
#     apt-get update && \
#     apt-get install -y apache2

# EXPOSE 80

# CMD ["apachectl", "-D", "FOREGROUND"]

#
FROM dart:stable

#
# WORKDIR /app
WORKDIR /app/src

#
COPY pubspec.* .
RUN dart pub get

# RUN mkdir build

# COPY . .
COPY .dart_frog .dart_frog
COPY lib ./lib
COPY routes ./routes
COPY pubspec.yaml .
# COPY analysis_options.yaml .

#
RUN dart pub global activate dart_frog_cli
RUN dart pub global run dart_frog_cli:dart_frog build
RUN dart pub get --offline



# 
# WORKDIR /app

#
RUN apt-get update && apt-get install -y net-tools iputils-ping mariadb-client

# 
RUN apt-get install -y ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN apt-get install -y nodejs npm

#
COPY node_modules ./node_modules
COPY prisma ./prisma
COPY package.json .

# 
RUN rm -rf /app/src/lib/src/generated
RUN npx prisma generate
RUN dart run build_runner build
RUN dart_frog build
# RUN dart compile exe build/bin/server.dart -o /app/server

#
ENV DB_URL_BOOK_MANAGE="mysql://test:test1234@192.168.0.151:3306/groupware?allowPublicKeyRetrieval=true"

#
EXPOSE 8080/tcp



# # Resolve app dependencies.
# COPY pubspec.* ./
# # COPY package.* ./

# RUN dart pub get

# # Copy app source code and AOT compile it.
# COPY . .

# # Generate a production build.
# RUN dart pub global activate dart_frog_cli
# # RUN dart pub global activate orm
# RUN dart pub global run dart_frog_cli:dart_frog build

# # Ensure packages are still up-to-date if anything has changed.
# RUN dart pub get --offline

# # RUN dart pub add orm
# RUN dart compile exe build/bin/server.dart -o build/bin/server



# # Build minimal serving image from AOT-compiled `/server` and required system
# # libraries and configuration files stored in `/runtime/` from the build stage.
# FROM scratch
# COPY --from=build /runtime/ /
# COPY --from=build /app/build/bin/server /app/bin/
# # Uncomment the following line if you are serving static files.
# # COPY --from=build /app/build/public /public/
# # COPY --from=build /app/build/prisma /prisma/
