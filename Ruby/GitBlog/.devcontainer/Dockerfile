FROM ruby:3.2.3-slim

LABEL Version=0.0.1
LABEL authors="sangjung"

EXPOSE 4000

RUN bundle config --global frozen 1

RUN apt-get update && apt-get install -y git libffi-dev build-essential

WORKDIR /workspaces/app
COPY . /workspaces/app

RUN bundle install --verbose

CMD ["tail", "-f", "/dev/null"]
