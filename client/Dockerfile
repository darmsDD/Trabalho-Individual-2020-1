FROM node:14.15.1

RUN mkdir /clientNode

WORKDIR /clientNode

ADD package.json /clientNode

ADD yarn.lock /clientNode

RUN yarn

ADD . /clientNode

CMD ["yarn", "dev"]

