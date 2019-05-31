# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN yarn 
COPY . .
RUN yarn build 

# production stage
#FROM nginx:stable-alpine as production-stage
FROM staticfloat/nginx-certbot as production-stage
COPY *.conf /etc/nginx/conf.d/
COPY --from=build-stage /app/dist /usr/share/nginx/html
# CMD ["nginx", "-g", "daemon off;"]