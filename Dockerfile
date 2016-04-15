FROM rails:4.2

WORKDIR /var/www/app

COPY app /var/www/app

RUN bundle install
