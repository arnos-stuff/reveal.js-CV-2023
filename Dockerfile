FROM node:19-alpine3.16

RUN npm install
RUN npm install -g gulp-cli

EXPOSE 8080

CMD [ "gulp", "serve", "--port", "8080"]