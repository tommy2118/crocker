FROM ruby:2.4.3

LABEL maintainer="tommy.caruso2118@gmail.com"

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update -qqy && apt-get -qqyy install \
    nodejs \
  && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /crocker

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
RUN bundle install

COPY package.json $APP_HOME/

COPY . $APP_HOME/

