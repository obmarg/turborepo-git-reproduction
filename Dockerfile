FROM node:16.15-alpine3.14

RUN npm install -g pnpm@7

RUN mkdir /src
WORKDIR /src
COPY . /src/

RUN pnpm i

RUN pnpm exec turbo run build --filter=web
