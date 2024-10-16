FROM node:20-alpine

ENV ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
    ME_CONFIG_MONGODB_ADMINPASSWORD=admin

RUN mkdir -p /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR  /home/app

COPY ./package.json .

# will execute npm install in /home/app because of WORKDIR
RUN npm install

COPY . /home/app

EXPOSE 3000

# no need for /home/app/server.js because of WORKDIR
# CMD ["node", "server.js"]

CMD ["npm", "start"]