FROM rails:4.2

WORKDIR /var/www/app

COPY app /var/www/app
COPY secrets/database.yml /var/www/app/config/database.yml

RUN gem install bundler
RUN bundle install --without development test
RUN RAILS_ENV=production bin/rake assets:precompile
# RUN RAILS_ENV=production rake db:create db:migrate
