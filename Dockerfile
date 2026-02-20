FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN npm prune --production

FROM node:22-alpine
WORKDIR /app
COPY --from=builder /app/build build/
COPY --from=builder /app/node_modules node_modules/
COPY package.json .

# CHANGED: Expose and listen on port 80 to match Kubernetes
EXPOSE 80
ENV NODE_ENV=production
ENV PORT=80

CMD [ "node", "build" ]