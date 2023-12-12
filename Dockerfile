# syntax=docker/dockerfile:1
FROM node:node:18-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /app
COPY app/package.json app/yarn.lock ./
COPY app/spec ./spec
COPY app/src ./src
RUN yarn install  
CMD ["node", "src/index.js"]
EXPOSE 3000
