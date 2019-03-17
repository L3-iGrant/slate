FROM ruby:2.5-alpine

RUN apk update \
 && apk add coreutils git make g++ nodejs

ADD . .
RUN bundle install
