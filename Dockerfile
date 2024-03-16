FROM ruby:3.3.0-slim-bookworm

WORKDIR /myapp

RUN apt-get update \
  && apt-get install -y --no-install-recommends gcc make \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./

RUN bundle install
