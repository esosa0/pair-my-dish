# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Aroma.destroy_all
User.destroy_all
Wine.destroy_all
Ingredient.destroy_all
CookingMethod.destroy_all
Sauce.destroy_all

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

Wine.create name: 'sauvignon blanc', body: 1, alcohol: 1, tannin: 0, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'riesling', body: 2, alcohol: 1, tannin: 0, acid: 3, sweetness: 2, sparkling: false
Wine.create name: 'chardonnay', body: 3, alcohol: 2, tannin: 0, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'rose', body: 4, alcohol: 1, tannin: 1, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'pinot noir', body: 5, alcohol: 2, tannin: 1, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'merlot', body: 6, alcohol: 2, tannin: 2, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'cabernet sauvignon', body: 7, alcohol: 3, tannin: 3, acid: 1, sweetness: 1, sparkling: false

Ingredient.create name: 'vegetables', body_min: 1, body_max: 4
Ingredient.create name: 'fish', body_min: 1, body_max: 5
Ingredient.create name: 'seafood', body_min: 1, body_max: 5
Ingredient.create name: 'chicken', body_min: 2, body_max: 5
Ingredient.create name: 'pork', body_min: 5, body_max: 6
Ingredient.create name: 'lamb', body_min: 5, body_max: 7
Ingredient.create name: 'beef', body_min: 5, body_max: 7

CookingMethod.create name: 'raw', dry: false
CookingMethod.create name: 'boiled', dry: false
CookingMethod.create name: 'steamed', dry: false
CookingMethod.create name: 'braised', dry: false
CookingMethod.create name: 'sauteed', dry: true
CookingMethod.create name: 'fried', dry: true
CookingMethod.create name: 'roasted', dry: true
CookingMethod.create name: 'grilled', dry: true

Sauce.create name: "tomato sauce", alcohol_min: 1, alcohol_max: 3, tannin_min:0, tannin_max:3, acid_min: 3, acid_max: 3
Sauce.create name: "olive oil", alcohol_min: 1, alcohol_max: 2, tannin_min:0, tannin_max:3, acid_min: 1, acid_max: 3
Sauce.create name: "cream sauce", alcohol_min: 2, alcohol_max: 3, tannin_min:0, tannin_max:3, acid_min: 1, acid_max: 3
Sauce.create name: "butter sauce", alcohol_min: 2, alcohol_max: 3, tannin_min:0, tannin_max:3, acid_min: 1, acid_max: 3
Sauce.create name: "BBQ sauce", alcohol_min: 2, alcohol_max: 3, tannin_min:0, tannin_max:3, acid_min: 1, acid_max: 3
Sauce.create name: "lemon sauce", alcohol_min: 1, alcohol_max: 2, tannin_min:0, tannin_max:3, acid_min: 3, acid_max: 3
Sauce.create name: "pesto", alcohol_min: 1, alcohol_max: 2, tannin_min:0, tannin_max:3, acid_min: 1, acid_max: 3
Sauce.create name: "cheese sauce", alcohol_min: 2, alcohol_max: 3, tannin_min:0, tannin_max:3, acid_min: 1, acid_max: 3








