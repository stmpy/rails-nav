FROM rails:4.2

WORKDIR /var/www/app

COPY app /var/www/app

RUN bundle install

RUN RAILS_ENV=production rake db:create db:migrate
