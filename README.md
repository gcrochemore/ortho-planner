== Ortho-planner [ ![Codeship Status for gcrochemore/ortho-planner](https://app.codeship.com/projects/864f9480-ac05-0134-ca14-2656ee888b62/status?branch=master)](https://app.codeship.com/projects/192362)

##TODO : Lancer automatique rake db:migrate

##TODO : Patient ajouter année scolaire

===== Schéma BDD

![Schéma BDD](https://github.com/gcrochemore/ortho-planner/blob/develop/erd.png "Schéma BDD")


https://github.com/gcrochemore/ortho-planner/blob/develop/erd.dot

===== Lancer les tests
	
	bundle exec rake

===== Generate entity

Supprimer les fichiers a recréer puis : (en ajoutant --skip à la fin)

	rails generate scaffold HealthPlaceType name:string 

	rails generate scaffold HealthPlace name:string health_place_type:references

	rails generate scaffold patient last_name:string first_name:string is_male:boolean birth_date:date birth_place:string priority:boolean comments:text job:string

	rails generate scaffold PractitionerProfession name:string

	rails generate scaffold Practitioner first_name:string last_name:string birth_date:date birth_place:string practitioner_profession:references health_place:references

	rails generate scaffold Pathology name:string

	rails generate scaffold Act name:string AMO:float

	rails generate scaffold therapy practitioner:references begin_date:datetime end_date:datetime patient:references health_place:references number_of_sessions:integer session_duration:integer act:references

	rails generate scaffold session begin_date:datetime end_date:datetime therapy:references act:references practitioner:references health_place:references

	rails generate scaffold WaitingList patient:belongs_to health_place:references start_date:datetime end_date:datetime pathology:references comments:text waiting_for_patient_return:boolean

	rails generate scaffold interaction_type name:string glyphicon:string

	rails generate scaffold interaction_object name:string

	rails generate scaffold interaction patient:references practitioner:references interaction_object:references interaction_type:references interaction_date:datetime comments:text

	rails generate scaffold absence patient:references begin_date:datetime end_date:datetime

	rails generate scaffold patients_acts patient:references act:references

	rails generate scaffold school_year begin_date:date end_date:date

	rails generate scaffold school_level name:string

	rails generate scaffold school_type name:string

	rails generate scaffold school name:string school_type:references

	rails generate scaffold schooling patient:references school:references school_level:references school_year:references

	rails generate scaffold address_type name:string

	rails generate scaffold address name:string street_number:integer street_name:string postal_code:string city:string latitude:float longitude:float addressable:references{polymorphic} address_type:references

	rails generate scaffold patients_pathologies patient:references pathology:references

	rails generate scaffold contact_information_type name:string

	rails generate scaffold contact_information contactable:references{polymorphic} contact_information_type:references value:string

	rails generate scaffold patient_availability patient:references day:integer period:integer




	rails generate scaffold_controller Version item_type:string item_id:integer event:string whodunnit:string object:text created_at:datetime

	rails generate scaffold_controller User email:string password:string sign_in_count:integer


===== Docker

	docker-compose build --no-cache

Supprimer Gemfile.lock

	docker-compose up -d
	docker exec orthoplanner_ortho-planner_1 rake db:migrate

	docker logs -f orthoplanner_ortho-planner_1

	docker exec -it orthoplanner_ortho-planner_1 rails c

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

	rake db:seed:dump FILE=db/seeds/db_prod.rb

===== ERD

	bundle exec erd --filetype=dot

===== DO

* Ajouter une profession sur patient
* Ajouter un type d'adresse
* Ajouter un type d'adresse sur une adresse
* Créer la table association patient/pathology
* Ajouter un type de coordonnées
* Ajouter une coordonnée
* Supprimer le numéro de téléphone sur le patient
* Créer availability

availability

===== TODO

* Ajouter un practitioner à un user (non obligatoire)

* Modifier le profil practitioner pour n'avoir accès qu'a la liste des patients et à la liste d'attente

* Ajouter un numéro d'établissement, un secteur (public/privé -> boolean is_public) sur un établissement scolaire (lié ensuite avec coordonnées pour ajouter site_web/uméro de téléphone/fax/adresse mail)

* Améliorer l'ajout d'un appel

* Voir la détail des appels en passant dessus sur la liste d'attente

* Ajouter le practitioner sur l'intéraction

* Ajouter la date du message sur le répondeur pour take care de waiting list

* Identifier la personne faisant la prise en charge, supprimant le patient de la liste d'attente 

====== WIKI

Une période (table availability) correspond à 15 min. Ainsi la période 10 correspond à 2h30-2h45 (10*15min=150min=2h30min), 50 à 12h30-13h (50*15min=750min=12h30min)