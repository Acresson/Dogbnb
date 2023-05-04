# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

#perform le seed
def perform
  Dogsitter.destroy_all
  Dog.destroy_all
  City.destroy_all
  Stroll.destroy_all
  Inter.destroy_all
  10.times do
    create_cities
    create_dogs
    create_dogsitters
    create_strolls
    create_inters
  end
  puts "10 villes, chiens, dogsitters, strolls et inters ont été créés"
end


#seed dogs table
def create_dogs
  name = Faker::Creature::Dog.name
  city = City.all.sample
  Dog.create!(name: name, city: city)
end

#seed dogsitters table
def create_dogsitters
  name = Faker::Name.first_name
  city = City.all.sample
  Dogsitter.create!(name: name, city: city)
end

#seed strolls table
def create_strolls
  dogsitter = Dogsitter.all.sample
  date = Faker::Date.in_date_period
  Stroll.create!(dogsitter: dogsitter, date: date)
end

#seed cities table
def create_cities
  city_name = Faker::Address.city
  City.create!(city_name: city_name)
end

#seed inters table
def create_inters
  dog = Dog.all.sample
  stroll = Stroll.all.sample
  Inter.create!(dog: dog, stroll: stroll)
end

perform
