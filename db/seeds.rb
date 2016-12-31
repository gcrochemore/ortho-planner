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

user = User.create( email: "practionner@ortho-planner.com", password: "ortho-planner", password_confirmation: "ortho-planner")
user.save
user.add_role :practitioner

user = User.create( email: "repository-manager@ortho-planner.com", password: "ortho-planner", password_confirmation: "ortho-planner")
user.save
user.add_role :repository_manager

user = User.create( email: "admin@ortho-planner.com", password: "ortho-planner", password_confirmation: "ortho-planner")
user.save
user.add_role :admin