FROM node:14-stretch-slim as build
WORKDIR /app
COPY . /app
EXPOSE 8080
RUN npm install && npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html