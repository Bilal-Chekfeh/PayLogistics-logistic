FROM ruby:3.3.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && rm -rf /var/lib/apt/lists/*

WORKDIR /api

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["sh", "-c", "rails server -b 0.0.0.0"]