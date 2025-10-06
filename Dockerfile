# =============== Multi-stage docker =============== #

# Stage 1 pulling node
FROM node:24-alpine AS builder

# Creating a working directory
WORKDIR /app

# Copy dependency files first for better caching
COPY package.json ./

# Install dependencies (frozen-lockfile ensures reproducible builds)
RUN npm install

# Copying the rest of the files/folders
COPY . .

# Creating a build of the app
RUN npm run build

# Stage 2 pulling node
FROM nginx:alpine

# Copy static export to Nginx HTML directory
COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]