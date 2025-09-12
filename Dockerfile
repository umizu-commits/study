# Dockerfile
FROM ruby:3.2

WORKDIR /app

# 必要なら Gemfile をコピーして bundle install
# COPY Gemfile* ./
# RUN bundle install

COPY . .

CMD ["irb"]