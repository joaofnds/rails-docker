FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hive
WORKDIR /hive
COPY Gemfile /hive/Gemfile
COPY Gemfile.lock /hive/Gemfile.lock
RUN bundle install
COPY . /hive