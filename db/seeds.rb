# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create( email: "secretaire@ortho-planner.com", password: "ortho-planner")
user.skip_confirmation!
user.save!
user.add_role :secretary

user = User.create( email: "practionner@ortho-planner.com", password: "ortho-planner")
user.skip_confirmation!
user.save!
user.add_role :practitioner

user = User.create( email: "repository-manager@ortho-planner.com", password: "ortho-planner")
user.skip_confirmation!
user.save!
user.add_role :repository_manager