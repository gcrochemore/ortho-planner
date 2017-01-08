== Ortho-planner [ ![Codeship Status for gcrochemore/ortho-planner](https://app.codeship.com/projects/864f9480-ac05-0134-ca14-2656ee888b62/status?branch=master)](https://app.codeship.com/projects/192362)

##TODO : Lancer automatique rake db:migrate

##TODO : Ajouter date de dernier appel sur liste d'attente, changer comment en text

##TODO : Patient ajouter année scolaire + suivi orthophoniste précédent (créer une thérapie)

##TODO : Patient ajouter suivi en institution + quel domaine

===== Lancer les tests
	
	``` bundle exec rake ```

===== Generate entity

Supprimer les fichiers a recréer puis : (en ajoutant --skip à la fin)

rails generate scaffold HealthPlaceType name:string 

rails generate scaffold HealthPlace name:string health_place_type:references

rails generate scaffold Patient last_name:string first_name:string birth_date:date birth_place:string phone_number:string

rails generate scaffold PractitionerProfession name:string

rails generate scaffold Practitioner first_name:string last_name:string birth_date:date birth_place:string practitioner_profession:references health_place:references

rails generate scaffold Pathology name:string

rails generate scaffold Act name:string AMO:float

rails generate scaffold therapy practitioner:references begin_date:datetime end_date:datetime patient:references health_place:references number_of_sessions:integer session_duration:integer

rails generate scaffold session begin_date:datetime end_date:datetime therapy:references act:references practitioner:references health_place:references

rails generate scaffold WaitingList patient:belongs_to office:references start_date:datetime end_date:datetime pathology:references comments:text

rails generate scaffold interaction_type name:string glyphicon:string

rails generate scaffold interaction_object name:string

rails generate scaffold interaction patient:references interaction_type:references interaction_date:datetime comments:text

rails generate scaffold absence patient:references begin_date:datetime end_date:datetime




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

heroku run rake db:reset --app ortho-planner


heroku run rails console --app ortho-planner


===== Database 

rake db:reset RAILS_ENV=development
rake db:seed RAILS_ENV=development

