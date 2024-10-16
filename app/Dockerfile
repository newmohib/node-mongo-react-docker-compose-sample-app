FROM node:20-alpine

# WORKDIR  /user/src/app
# COPY ./package.json .

# RUN npm install

# COPY . /user/src/app

# EXPOSE 3000

ENV MONGO_INITDB_ROOT_USERNAME=admin \
MONGO_INITDB_ROOT_PASSWORD=admin

RUN mkdir -p /home/app

COPY ./app /home/app

CMD ["npm", "start" ]