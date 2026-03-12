FROM docker.io/oven/bun:1.3.10-alpine AS builder

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

COPY . .
RUN bun run generate

FROM docker.io/library/caddy:2-alpine

COPY --from=builder /app/.output/public /usr/share/caddy

RUN addgroup -S app && adduser -S app -G app

USER app
