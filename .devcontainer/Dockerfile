# Dockerfile
FROM node:20

# Install dependencies for Playwright
RUN apt-get update && \
    apt-get install -y \
    libatk-bridge2.0-0 \
    libnss3 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    xdg-utils \
    libxkbcommon0 \
    libasound2 \
    libxshmfence1 && \
    rm -rf /var/lib/apt/lists/*

# Install Playwright and Chromium
RUN npx playwright install-deps
