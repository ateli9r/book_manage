# An example of using a custom Dockerfile with Dart Frog
# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.17)
FROM dart:stable AS build

WORKDIR /app

# Resolve app dependencies.
COPY pubspec.* ./
RUN dart pub get

# Copy app source code and AOT compile it.
COPY . .

# Generate a production build.
RUN dart pub global activate dart_frog_cli
RUN dart pub global run dart_frog_cli:dart_frog build

# Ensure packages are still up-to-date if anything has changed.
RUN dart pub get --offline
RUN dart compile exe build/bin/server.dart -o build/bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/build/bin/server /app/bin/
# Uncomment the following line if you are serving static files.
COPY --from=build /app/build/public /public/

# RUN mkdir -p /app/public/print
# RUN mkdir -p /app/build/public/print
# RUN mkdir -p /app/build/public/print

# EXPOSE 8080

# FROM node:18-alpine

# Create app directory
# WORKDIR /usr/src/app

# COPY package*.json ./

# RUN npm install
# COPY . . 
# EXPOSE 5000

# RUN npx prisma generate
# CMD [ "npm", "run", "dev" ]


# Start the server.
CMD ["/app/bin/server"]