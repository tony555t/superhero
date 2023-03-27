# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# seed.rb

# Create some heroes
hero1 = Hero.create(name: "Bruce Wayne", super_name: "Batman")
hero2 = Hero.create(name: "Clark Kent", super_name: "Superman")

# Create some powers
power1 = Power.create(name: "Super strength", description: "The ability to lift heavy objects")
power2 = Power.create(name: "Flight", description: "The ability to fly")

# Assign powers to heroes
HeroPower.create(hero: hero1, power: power1, strength: "10")
HeroPower.create(hero: hero1, power: power2, strength: "7")
HeroPower.create(hero: hero2, power: power1, strength: "9")

puts "Seeding complete."
