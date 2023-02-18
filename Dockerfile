FROM node:19-alpine3.16
WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json
RUN npm install
RUN npm install -g gulp-cli
COPY . /usr/src/app

EXPOSE 8080

CMD [ "gulp", "serve", "--port", "8080"]