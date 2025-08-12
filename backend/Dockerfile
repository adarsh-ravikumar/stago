FROM oven/bun:1.1

WORKDIR /app

COPY bun.lock ./
COPY tsconfig.json ./
COPY package.json ./
COPY src ./src

RUN bun install

EXPOSE 3000

CMD ["bun", "run", "dev"]
