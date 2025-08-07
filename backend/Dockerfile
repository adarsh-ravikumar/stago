# Use official Bun image
FROM oven/bun:1.1

# Set the working directory
WORKDIR /app

# Copy files
COPY bun.lock ./
COPY tsconfig.json ./
COPY package.json ./
COPY src ./src

# Install dependencies
RUN bun install

# Expose the port your Bun app listens on (e.g., 3000)
EXPOSE 3000

# Start the server
CMD ["bun", "run", "dev"]
