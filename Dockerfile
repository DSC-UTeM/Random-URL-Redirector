FROM node:alpine

COPY . /application
WORKDIR /application

RUN npm install forever typescript -g
RUN npm install

EXPOSE 8080

ENTRYPOINT ["forever", "/application/dist/src/app.js"]