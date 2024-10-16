# FROM node:20-alpine

# ENV MONGO_DB_USERNAME=admin \
#     MONGO_DB_PWD=admin

# RUN mkdir -p /home/app

# COPY ./app /home/app

# # set default dir so that next commands executes in /home/app dir
# WORKDIR /home/app

# # will execute npm install in /home/app because of WORKDIR
# RUN npm install

# # no need for /home/app/server.js because of WORKDIR
# CMD ["node", "server.js"]

FROM node:20-alpine

WORKDIR  /user/src/app

COPY ./package.json .

RUN npm install

COPY . /user/src/app

EXPOSE 3000

CMD ["npm", "start"]