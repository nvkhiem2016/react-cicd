FROM node:12.19.0 as build
WORKDIR /app
COPY . /app
EXPOSE 3030
RUN npm install && npm run start

# FROM nginx:latest
# COPY ./app/build /usr/share/nginx/html