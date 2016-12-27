FROM rails:4.2.4
MAINTAINER Guillaume Crochemore <guillaume.crochemore@gmail.com>
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /var/app
COPY Gemfile /var/app/Gemfile
WORKDIR /var/app
ENV RAILS_ENV development
ENV RACK_ENV development
RUN bundle install
COPY . ./
CMD ["rails","server","-b","0.0.0.0"]