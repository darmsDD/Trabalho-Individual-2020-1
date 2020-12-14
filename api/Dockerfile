FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /apiRails

COPY Gemfile /apiRails

COPY Gemfile.lock /apiRails

RUN bundle install

COPY . /apiRails

COPY ./example.sh /example.sh
RUN chmod +x /example.sh
RUN ./example.sh
CMD ["rails", "server","-b","0.0.0.0"]

