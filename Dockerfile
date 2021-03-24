FROM node:14-stretch-slim as build
WORKDIR /app
COPY . /app
EXPOSE 3030
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN npm install && npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html