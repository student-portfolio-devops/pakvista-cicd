FROM node:alpine AS build-stage
WORKDIR /web-app
COPY package*.json .
RUN npm ci
COPY . .
RUN npx parcel build "source/index.html" --dist-dir "dist" --public-url "/"

FROM nginx:alpine
COPY --from=build-stage /web-app/dist /usr/share/nginx/html
