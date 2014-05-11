

#Heroku
* [Staging](http://bucklist-staging.herokuapp.com)

Please follow the steps below to get this site set up for local development.

1. Run Bundle Install
1. Create database by running rake db:create
1. Run migrations with rake db:migrate
4. Run migrations in test database with RACK_ENV=test rake db:migrate
5. Run tests using rspec

## Running on Heroku:
1. To run the migrations on heroku, run `heroku run 'rake db:migrate' --app bucklist-staging