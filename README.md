== Ortho-planner [ ![Codeship Status for gcrochemore/ortho-planner](https://app.codeship.com/projects/864f9480-ac05-0134-ca14-2656ee888b62/status?branch=master)](https://app.codeship.com/projects/192362)

##TODO : Lancer automatique rake db:migrate

##TODO : Ajouter date de dernier appel sur liste d'attente, changer comment en text

===== Lancer les tests
	
	``` bundle exec rake ```


===== Generate entity

Supprimer les fichiers a recréer puis : (en ajoutant --skip à la fin)

rails generate scaffold Office name:string

rails generate scaffold Patient last_name:string first_name:string birth_date:date birth_place:string phone_number:string

rails generate scaffold PractitionerProfession name:string

rails generate scaffold Practitioner first_name:string last_name:string birth_date:date birth_place:string PractitionerProfession:references

rails generate scaffold Pathology name:string

rails generate scaffold Act name:string AMO:integer

rails generate scaffold therapy practitioner:references begin_date:datetime end_date:datetime patient:references

rails generate scaffold session begin_date:datetime end_date:datetime therapy:references act:references practitioner:references

rails generate scaffold WaitingList patient:belongs_to office:references start_date:datetime end_date:datetime pathology:references comments:string


rails generate scaffold_controller Version item_type:string item_id:integer event:string whodunnit:string object:text created_at:datetime

rails generate scaffold_controller User email:string password:string sign_in_count:integer


===== Docker

docker-compose build --no-cache

Supprimer Gemfile.lock

docker-compose up -d
docker exec orthoplanner_ortho-planner_1 rake db:migrate


===== heroku

heroku login
heroku apps -> liste des apps
heroku run rake db:migrate --app ortho-planner
heroku logs --tail --app ortho-planner



heroku run rails console --app ortho-planner

