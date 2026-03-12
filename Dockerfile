FROM docker.io/oven/bun:1.3.10-alpine AS builder

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

COPY . .
RUN bun run build

FROM docker.io/oven/bun:1.3.10-alpine

WORKDIR /app

RUN addgroup -S app && adduser -S app -G app

COPY --from=builder --chown=app:app /app/.output .output
USER app

EXPOSE 3000

CMD ["bun", ".output/server/index.mjs"]