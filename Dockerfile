FROM node:19-alpine3.16
WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json
RUN gulp build
COPY . /usr/src/app

COPY --from=0 /usr/src/app/dist/ /usr/src/app/dist/

EXPOSE 8080

CMD [ "gulp", "serve", "--port", "8080"]