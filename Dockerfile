FROM node:20-slim

WORKDIR /app

COPY ./strapi-app .

# Install sharp dependencies (required by Strapi)
RUN apt-get update && apt-get install -y \
    build-essential \
    libcairo2-dev \
    libjpeg-dev \
    libpng-dev \
    libpango1.0-dev \
    libgif-dev \
    librsvg2-dev \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 1337

CMD ["npm", "run", "develop"]
