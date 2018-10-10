FROM ruby:2.5-alpine

RUN apk update && apk add build-base nodejs yarn postgresql-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

LABEL maintainer="Amin Shah Gilani <code@gilani.me>"

CMD puma -C config/puma.rb
