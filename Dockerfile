FROM node:stretch as build
WORKDIR /app
COPY . /app
EXPOSE 3030
RUN npm install && npm run build

FROM nginx:latest
COPY ./app/build /usr/share/nginx/html