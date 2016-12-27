FROM rails:4.2.4
MAINTAINER Guillaume Crochemore <guillaume.crochemore@gmail.com>

ENV RAILS_ENV=development
ENV RACK_ENV=development

RUN mkdir -p /var/app
COPY Gemfile /var/app/Gemfile
WORKDIR /var/app

RUN bundle install
CMD ["rails","server","-b","0.0.0.0"]