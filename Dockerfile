FROM ruby:3.1.2

RUN apt-get -y update
RUN apt-get -y install default-mysql-client

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myqpp
