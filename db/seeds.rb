# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

Category.create!(id: 1, label: "Hébergement")
Category.create!(id: 2, label: "Terroir / Gastronomie")
Category.create!(id: 3, label: "Loisir / Attraction")
Category.create!(id: 4, label: "Culture")
Category.create!(id: 5, label: "Balade / Randonnées")
Category.create!(id: 6, label: "Divertissement")
Category.create!(id: 7, label: "Evénement")
