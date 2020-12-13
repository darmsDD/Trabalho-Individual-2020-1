FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /apiRails

WORKDIR /apiRails

ADD Gemfile /apiRails

ADD Gemfile.lock /apiRails

RUN bundle install

ADD . /apiRails

CMD ["rails", "server","-b","0.0.0.0"]

