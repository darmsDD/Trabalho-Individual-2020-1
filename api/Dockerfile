FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /apiRails

COPY Gemfile /apiRails

COPY Gemfile.lock /apiRails

RUN bundle install

COPY . /apiRails

CMD ["rails", "server","-b","0.0.0.0"]

