# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Maïs',
    address:      'Saint-Laurent/Saint-Viateur',
    phone_number: '514-123-4567',
    category:      'french'
  },
  {
    name:         'Farine',
    address:      'Saint-Urbain/Saint-Viateur',
    phone_number: '514-987-6543',
    category:      'belgian'
  },
  {
    name:         'Anecdote',
    address:      'Rachel/Saint-Hubert',
    phone_number: '514-564-6752',
    category:      'italian'
  },
  {
    name:         'Ramen Misoya',
    address:      'Downtown',
    phone_number: '514-957-3878',
    category:      'japanese'
  },
  {
    name:         'Poule Mouillée',
    address:      'Rachel/Mentana',
    phone_number: '514-564-6711',
    category:      'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

# y avait il une maniere automatique de le faire ? parce que faker ...
