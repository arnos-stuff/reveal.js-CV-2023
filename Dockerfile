FROM node:lts-alpine

WORKDIR /usr/app
COPY ./ /usr/app
RUN npm install

RUN npm install -g gulp
RUN npm link gulp

EXPOSE 8080


CMD [ "gulp", "serve", "--port", "8080"]