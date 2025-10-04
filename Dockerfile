FROM oven/bun:latest

WORKDIR /app

COPY index.js .

COPY package.json bun.lock .

RUN bun install

EXPOSE 4444

CMD ["bun", "index.js"]