FROM ruby:2.6.5

RUN apt-get update \
    && apt-get install -y build-essential libpq-dev \
    && apt-get install -y mecab \
    && apt-get install -y libmecab-dev \
    && apt-get install -y mecab-ipadic \
    && apt-get install -y mecab-ipadic-utf8

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

ARG RAILS_ENV=development
RUN if [ "$RAILS_ENV" = "production" ]; then SECRET_KEY_BASE=$(rails secret) bundle exec rails assets:precompile; fi
