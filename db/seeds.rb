# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Aroma.destroy_all
# User.destroy_all

Aroma.create name: 'bacon'
Aroma.create name: 'leather'
Aroma.create name: 'coffee'
Aroma.create name: 'smoke'
Aroma.create name: 'toasted bread'
Aroma.create name: 'orange'
Aroma.create name: 'floral'
Aroma.create name: 'blackberry'
Aroma.create name: 'raspberry'
Aroma.create name: 'mulberry'
Aroma.create name: 'lemon'
Aroma.create name: 'strawberry'
Aroma.create name: 'apricot'
Aroma.create name: 'cherry'
Aroma.create name: 'banana'
Aroma.create name: 'lychee'
Aroma.create name: 'butter'
Aroma.create name: 'almond'
Aroma.create name: 'chestnut'
Aroma.create name: 'coconut'
Aroma.create name: 'hazelnut'
Aroma.create name: 'black pepper'
Aroma.create name: 'liquorice'
Aroma.create name: 'honey'
Aroma.create name: 'tea'
Aroma.create name: 'tobacco'
Aroma.create name: 'eucalyptus'
Aroma.create name: 'grass'
Aroma.create name: 'green pepper'
Aroma.create name: 'pepperoni'
Aroma.create name: 'mint'

User.create email: 'admin@example.com', password: '12345678', password_confirmation: '12345678', admin: true
User.create email: 'user@example.com', password: '12345678', password_confirmation: '12345678', admin: false

