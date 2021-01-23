FROM node:alpine

COPY . /application
WORKDIR /application

RUN npm install forever typescript -g
RUN npm install

RUN npm run build

EXPOSE 8080

ENTRYPOINT ["forever", "/application/dist/src/app.js"]