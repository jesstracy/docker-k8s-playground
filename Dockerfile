FROM ruby:2.7-slim

WORKDIR /server
COPY server.rb Gemfile ./

RUN gem install bundler -v 2.2.9 \
  && bundle install

CMD ["ruby", "server.rb"]
