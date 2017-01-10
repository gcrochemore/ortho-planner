# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create( email: "secretaire@ortho-planner.com", password: "ortho-planner", password_confirmation: "ortho-planner")
user.save
user.add_role :secretary

user = User.create( email: "orthophoniste@ortho-planner.com", password: "ortho-planner", password_confirmation: "ortho-planner")
user.save
user.add_role :practitioner

user = User.create( email: "repository-manager@ortho-planner.com", password: "ortho-planner", password_confirmation: "ortho-planner")
user.save
user.add_role :repository_manager

user = User.create( email: "admin@ortho-planner.com", password: "ortho-planner", password_confirmation: "ortho-planner")
user.save
user.add_role :admin

pathology = Pathology.create(name: "Pathologie de la parole")
pathology.save
pathology = Pathology.create(name: "Pathologie de la voix")
pathology.save
pathology = Pathology.create(name: "Pathologie du langage écrit")
pathology.save
pathology = Pathology.create(name: "Pathologie du langage oral")
pathology.save

act = Act.create(name: "Bilan de la déglutition et des fonctions oro-myo fonctionnelles.", AMO: 16)
act.save
act = Act.create(name: "Bilan de renouvellement", AMO: 11.2)
act.save

act = Act.create(name: "Bilan de la phonation", AMO: 24)
act.save
act = Act.create(name: "Bilan du langage oral et/ou bilan d’aptitudes à l’acquisition du langage écrit", AMO: 24)
act.save
act = Act.create(name: "Bilan du langage écrit", AMO: 24)
act.save
act = Act.create(name: "Bilan de la dyscalculie et des troubles du raisonnement logico- mathématique", AMO: 24)
act.save

act = Act.create(name: "Bilan de renouvellement", AMO: 16.8)
act.save

act = Act.create(name: "Bilan des troubles d’origine neurologique", AMO: 30)
act.save
act = Act.create(name: "Bilan du bégaiement", AMO: 30)
act.save
act = Act.create(name: "Bilan du langage dans le cadre des handicaps moteurs, sensoriels ou mentaux (inclus surdité, IMC, autisme, maladies génétiques)", AMO: 30)
act.save

act = Act.create(name: "Bilan de renouvellement", AMO: 21)
act.save

act = Act.create(name: "Rééducation des troubles d’articulation isolés chez des personnes ne présentant pas d’affectation neurologique", AMO: 5.1)
act.save

act = Act.create(name: "Rééducation de la déglutition atypique", AMO: 8)
act.save
act = Act.create(name: "Rééducation des troubles de l'articulation liés à des déficiences perceptives", AMO: 8)
act.save
act = Act.create(name: "Rééducation des troubles de l'articulation liés à des déficiences d'origine organique", AMO: 8)
act.save
act = Act.create(name: "Rééducation vélo-tubo-tympanique", AMO: 8)
act.save

act = Act.create(name: "Rééducation des troubles de l’écriture", AMO: 10)
act.save

act = Act.create(name: "Rééducation des troubles de l’écriture", AMO: 10)
act.save
act = Act.create(name: "Rééducation des pathologies du langage écrit: lecture et/ou orthographe", AMO: 10.1)
act.save
act = Act.create(name: "Rééducation des troubles du calcul et du raisonnement logico mathématique", AMO: 10.2)
act.save
act = Act.create(name: "Rééducation des anomalies des fonctions oro faciales entraînant des troubles de l’articulation et de la parole", AMO: 10.3)
act.save

act = Act.create(name: "Rééducation des dysarthries neurologiques", AMO: 11)
act.save
act = Act.create(name: "Rééducation des dysphagies chez l’adulte et l’enfant", AMO: 11)
act.save

act = Act.create(name: "Éducation à l'utilisation des prothèses phonatoires", AMO: 11.1)
act.save
act = Act.create(name: "Rééducation des troubles de la voie d’origine organique ou fonctionnelle", AMO: 11.4)
act.save

act = Act.create(name: "Éducation à l'acquisition et à l'utilisation de la voix oro-œsophagienne et/ou trachéo-œsophagienne", AMO: 11.2)
act.save
act = Act.create(name: "Rééducation du mouvement paradoxal d’adduction des cordes vocales à l’inspiration", AMO: 11.3)
act.save
act = Act.create(name: "Réadaptation à la communication dans les surdités acquises appareillées et/ou éducation à la pratique de la lecture labiale", AMO: 12)
act.save
act = Act.create(name: "Rééducation des retard de parole, du langage oral", AMO: 12.1)
act.save
act = Act.create(name: "Rééducation du bégaiement", AMO: 12.2)
act.save
act = Act.create(name: "Éducation précoce au langage dans les handicaps de l'enfant de type sensoriel, moteur, mental", AMO: 13.6)
act.save
act = Act.create(name: "Éducation ou rééducation du langage dans les handicaps de l'enfant de type sensoriel, moteur, mental", AMO: 13.5)
act.save

act = Act.create(name: "Éducation ou rééducation du langage dans le cadre de l’autisme", AMO: 13.8)
act.save
act = Act.create(name: "Éducation ou rééducation du langage dans le cadre des maladies génétiques", AMO: 13.8)
act.save
act = Act.create(name: "Éducation ou rééducation du langage dans le cadre de l’infirmité motrice cérébrale", AMO: 13.8)
act.save

act = Act.create(name: "Rééducation des dysphasies", AMO: 14)
act.save
act = Act.create(name: "Rééducation du langage dans les aphasies", AMO: 15.6)
act.save
act = Act.create(name: "Rééducation des troubles du langage non aphasiques dans le cadre d'autres atteintes neurologiques", AMO: 15.2)
act.save
act = Act.create(name: "Maintien et adaptation des fonctions de communication chez les personnes atteintes de maladies neurodégénératives", AMO: 15)
act.save
act = Act.create(name: "Démutisation dans les surdités du premier âge, appareillées ou non, y compris en cas d’implantation cochléaire", AMO: 15.4)
act.save
act = Act.create(name: "Rééducation ou conservation du langage oral et de la parole dans les surdités appareillées ou non, y compris en cas d’implantation cochléaire", AMO: 15.1)
act.save
act = Act.create(name: "Séance de groupe (consulter la nomenclature pour détail)", AMO: 5)
act.save

health_place_type = HealthPlaceType.create(name: "Institut médico-éducatif")
health_place_type.save
health_place = HealthPlace.create(name: "IME de Arques-la-bataille", health_place_type: health_place_type)
health_place.save

health_place_type = HealthPlaceType.create(name: "Centre médico-psychologique")
health_place_type.save
health_place = HealthPlace.create(name: "CMP de Dieppe", health_place_type: health_place_type)
health_place.save

health_place_type = HealthPlaceType.create(name: "Cabinet d'orthophonie")
health_place_type.save

health_place = HealthPlace.create(name: "Cabinet de Tôtes", health_place_type: health_place_type)
health_place.save
address = Address.create(name: "Cabinet de Tôtes", addressable: health_place)
address.save

practitioner_profession = PractitionerProfession.create(name: "Psychologue")
practitioner_profession.save
practitioner_profession = PractitionerProfession.create(name: "Médecin")
practitioner_profession.save
practitioner_profession = PractitionerProfession.create(name: "Infirmière")
practitioner_profession.save
practitioner_profession = PractitionerProfession.create(name: "Orthophoniste")
practitioner_profession.save

practitioner = Practitioner.create(first_name: "Perrine", last_name: "Clatz", health_place: health_place, practitioner_profession: practitioner_profession);
practitioner.save 
practitioner = Practitioner.create(first_name: "Jeanne", last_name: "Gazan", health_place: health_place, practitioner_profession: practitioner_profession);
practitioner.save 
practitioner = Practitioner.create(first_name: "Louise", last_name: "Leporcq", health_place: health_place, practitioner_profession: practitioner_profession);
practitioner.save 
practitioner = Practitioner.create(first_name: "Anaëlle", last_name: "Etienne", health_place: health_place, practitioner_profession: practitioner_profession);
practitioner.save 
practitioner = Practitioner.create(first_name: "Monique", last_name: "Briand", health_place: health_place, practitioner_profession: practitioner_profession);
practitioner.save 
practitioner = Practitioner.create(first_name: "Emmanuelle", last_name: "Laville", health_place: health_place, practitioner_profession: practitioner_profession);
practitioner.save 

interaction_type = InteractionType.create(name: "Appel téléphonique", glyphicon: "glyphicon glyphicon-earphone")
interaction_type.save
interaction_type = InteractionType.create(name: "Message vocal", glyphicon: "")
interaction_type.save
interaction_type = InteractionType.create(name: "E-mail", glyphicon: "")
interaction_type.save
interaction_type = InteractionType.create(name: "Sms", glyphicon: "glyphicon glyphicon-phone")
interaction_type.save
interaction_type = InteractionType.create(name: "Courier", glyphicon: "glyphicon glyphicon-envelope")
interaction_type.save

interaction_object = InteractionObject.create(name: "Inscrire sur la liste d'attente")
interaction_type.save
interaction_object = InteractionObject.create(name: "Relance inscription sur liste d'attente")
interaction_type.save


school_level = SchoolLevel.create(name: "PS")
school_level.save
school_level = SchoolLevel.create(name: "MS")
school_level.save
school_level = SchoolLevel.create(name: "GS")
school_level.save
school_level = SchoolLevel.create(name: "CP")
school_level.save
school_level = SchoolLevel.create(name: "CE1")
school_level.save
school_level = SchoolLevel.create(name: "CE2")
school_level.save
school_level = SchoolLevel.create(name: "CM1")
school_level.save
school_level = SchoolLevel.create(name: "CM2")
school_level.save
school_level = SchoolLevel.create(name: "6ième")
school_level.save
school_level = SchoolLevel.create(name: "5ième")
school_level.save
school_level = SchoolLevel.create(name: "4ième")
school_level.save
school_level = SchoolLevel.create(name: "3ième")
school_level.save
school_level = SchoolLevel.create(name: "2nd")
school_level.save
school_level = SchoolLevel.create(name: "1ière")
school_level.save
school_level = SchoolLevel.create(name: "Terminale")
school_level.save
 
school_type = SchoolType.create(name: "Ecole maternelle")
school_type.save
school_type = SchoolType.create(name: "Ecole élémentaire")
school_type.save

school = School.create(name: "Ecole elementaire publique d'Ambrumesnil", school_type: school_type)
school.save
address = Adress.create(name: "Ecole elementaire publique d'Ambrumesnil", street_name: "Rue de l'ancienne mare", postal_code: "76550", city: "Ambrumesnil", addressable: school)
address.save

school_type = SchoolType.create(name: "Collège")
school_type.save

school = School.create(name: "Collège de Luneray", school_type: school_type)
school.save


school_type = SchoolType.create(name: "Lycée")
school_type.save
school_type = SchoolType.create(name: "Centre de fomation d'apprentis")
school_type.save
school_type = SchoolType.create(name: "Université")
school_type.save
school_type = SchoolType.create(name: "Institut universitaire")
school_type.save
school_type = SchoolType.create(name: "Ecole d'Ingénieur")
school_type.save
school_type = SchoolType.create(name: "Ecole de Gestion et de Commerce")
school_type.save
school_type = SchoolType.create(name: "Ecole d'art")
school_type.save
school_type = SchoolType.create(name: "Formation continue")
school_type.save
school_type = SchoolType.create(name: "Autre établissement d'enseignement supérieur")
school_type.save
school_type = SchoolType.create(name: "Ecole sanitaire et sociale")
school_type.save
school_type = SchoolType.create(name: "Enseignement adapté")
school_type.save
school_type = SchoolType.create(name: "Ecole maritime")
school_type.save
school_type = SchoolType.create(name: "Enseignement à distance")
school_type.save

school_year = SchoolYear.create(begin_date: "01/09/2016", end_date: "01/07/2017")
school_year.save
school_year = SchoolYear.create(begin_date: "01/09/2015", end_date: "01/07/2016")
school_year.save
school_year = SchoolYear.create(begin_date: "01/09/2014", end_date: "01/07/2015")
school_year.save
school_year = SchoolYear.create(begin_date: "01/09/2013", end_date: "01/07/2014")
school_year.save
school_year = SchoolYear.create(begin_date: "01/09/2012", end_date: "01/07/2013")
school_year.save
school_year = SchoolYear.create(begin_date: "01/09/2011", end_date: "01/07/2012")
school_year.save
school_year = SchoolYear.create(begin_date: "01/09/2010", end_date: "01/07/2011")
school_year.save
school_year = SchoolYear.create(begin_date: "01/09/2009", end_date: "01/07/2010")
school_year.save

