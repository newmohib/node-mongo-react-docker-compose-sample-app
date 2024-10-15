FROM node:20-alpine

WORKDIR  /user/src/app
COPY ./package.json .

RUN npm install

COPY . /user/src/app

EXPOSE 3000

CMD ["npm", "start" ]