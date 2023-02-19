FROM node:lts-alpine
WORKDIR /app
COPY package*.json ./
COPY . .

RUN npm install
RUN npm run build

ENV PATH /app/node_modules/.bin:$PATH

EXPOSE 8080
CMD [ "gulp", "serve", "--port", "8080", "--host", "0.0.0.0"]