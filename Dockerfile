FROM ruby:2.4.3

LABEL maintainer="tommy.caruso2118@gmail.com"

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update -qqy && apt-get -qqyy install \
    nodejs \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY package.json /usr/src/app/

COPY . /usr/src/app/

