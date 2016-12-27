== Ortho-planner [ ![Codeship Status for gcrochemore/ortho-planner](https://app.codeship.com/projects/864f9480-ac05-0134-ca14-2656ee888b62/status?branch=master)](https://app.codeship.com/projects/192362)

##TODO : Lancer automatique rake db:migrate

===== Lancer les tests
	
	``` bundle exec rake ```


===== Generate entity


rails generate scaffold Office name:string

rails generate scaffold Practitioner first_name:string last_name:string birth_date:date birth_place:string profession:references

rails generate scaffold PractitionerProfession name:string

rails generate scaffold Patient last_name:string first_name:string birth_date:date birth_place:string phone_number:string


rails generate scaffold_controller Version item_type:string item_id:integer event:string whodunnit:string object:text created_at:datetime



rails generate scaffold_controller User email:string password:string sign_in_count:integer


===== Docker

docker build -t ortho-planner-dev .




docker-compose build
docker-compose up



bundle install	
-> docker-compose run web bundle install
rails s	
-> docker-compose run web rails s
rspec spec/path/to/spec.rb	
-> docker-compose run web rspec spec/path/to/spec.rb
RAILS_ENV=test rake db:create	
-> docker-compose run -e RAILS_ENV=test web rake db:create
tail -f log/development.log	
-> docker-compose run web tail -f log/development.log

