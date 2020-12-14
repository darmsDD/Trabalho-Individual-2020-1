FROM node:14.15.1

WORKDIR /clientNode

COPY package.json /clientNode
COPY yarn.lock /clientNode

RUN yarn install

COPY . .
CMD ["yarn", "dev"]

