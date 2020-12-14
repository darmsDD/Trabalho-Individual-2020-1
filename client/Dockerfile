FROM node:14.15.1

WORKDIR /clientNode

COPY package.json /clientNode
COPY yarn.lock /clientNode

RUN yarn install

RUN yarn global add @vue/cli
RUN yarn global add @vue/cli-service-global

COPY . .

CMD ["yarn", "dev"]

