# Static files stage.
FROM node:19-alpine3.16
WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json
RUN npm install
COPY . /usr/src/app
RUN npm run build

# Production modules stage.
FROM node:19-alpine3.16
WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json
RUN npm install --production
COPY . /usr/src/app

COPY --from=0 /usr/src/app/dist/ /usr/src/app/dist/

EXPOSE 8080

CMD [ "gulp", "serve", "--port", "8080"]