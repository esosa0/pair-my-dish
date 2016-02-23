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

Ingredient.create name: 'vegetables', cooking_method: 'raw'
Ingredient.create name: 'vegetables', cooking_method: 'boiled'
Ingredient.create name: 'vegetables', cooking_method: 'poached'
Ingredient.create name: 'vegetables', cooking_method: 'steamed'
Ingredient.create name: 'vegetables', cooking_method: 'braised'
Ingredient.create name: 'vegetables', cooking_method: 'fried'
Ingredient.create name: 'vegetables', cooking_method: 'sautéed'
Ingredient.create name: 'vegetables', cooking_method: 'roasted'
Ingredient.create name: 'vegetables', cooking_method: 'grilled'

Ingredient.create name: 'fish', cooking_method: 'raw'
Ingredient.create name: 'fish', cooking_method: 'boiled'
Ingredient.create name: 'fish', cooking_method: 'poached'
Ingredient.create name: 'fish', cooking_method: 'steamed'
Ingredient.create name: 'fish', cooking_method: 'braised'
Ingredient.create name: 'fish', cooking_method: 'fried'
Ingredient.create name: 'fish', cooking_method: 'sautéed'
Ingredient.create name: 'fish', cooking_method: 'roasted'
Ingredient.create name: 'fish', cooking_method: 'grilled'

Ingredient.create name: 'seafood', cooking_method: 'raw'
Ingredient.create name: 'seafood', cooking_method: 'boiled'
Ingredient.create name: 'seafood', cooking_method: 'poached'
Ingredient.create name: 'seafood', cooking_method: 'steamed'
Ingredient.create name: 'seafood', cooking_method: 'braised'
Ingredient.create name: 'seafood', cooking_method: 'fried'
Ingredient.create name: 'seafood', cooking_method: 'sautéed'
Ingredient.create name: 'seafood', cooking_method: 'roasted'
Ingredient.create name: 'seafood', cooking_method: 'grilled'

Ingredient.create name: 'chicken', cooking_method: 'boiled'
Ingredient.create name: 'chicken', cooking_method: 'poached'
Ingredient.create name: 'chicken', cooking_method: 'steamed'
Ingredient.create name: 'chicken', cooking_method: 'braised'
Ingredient.create name: 'chicken', cooking_method: 'fried'
Ingredient.create name: 'chicken', cooking_method: 'sautéed'
Ingredient.create name: 'chicken', cooking_method: 'roasted'
Ingredient.create name: 'chicken', cooking_method: 'grilled'

Ingredient.create name: 'pork', cooking_method: 'cured'
Ingredient.create name: 'pork', cooking_method: 'boiled'
Ingredient.create name: 'pork', cooking_method: 'poached'
Ingredient.create name: 'pork', cooking_method: 'steamed'
Ingredient.create name: 'pork', cooking_method: 'braised'
Ingredient.create name: 'pork', cooking_method: 'fried'
Ingredient.create name: 'pork', cooking_method: 'sautéed'
Ingredient.create name: 'pork', cooking_method: 'roasted'
Ingredient.create name: 'pork', cooking_method: 'grilled'

Ingredient.create name: 'lamb', cooking_method: 'raw'
Ingredient.create name: 'lamb', cooking_method: 'boiled'
Ingredient.create name: 'lamb', cooking_method: 'poached'
Ingredient.create name: 'lamb', cooking_method: 'steamed'
Ingredient.create name: 'lamb', cooking_method: 'braised'
Ingredient.create name: 'lamb', cooking_method: 'fried'
Ingredient.create name: 'lamb', cooking_method: 'sautéed'
Ingredient.create name: 'lamb', cooking_method: 'roasted'
Ingredient.create name: 'lamb', cooking_method: 'grilled'

Ingredient.create name: 'beef', cooking_method: 'raw'
Ingredient.create name: 'beef', cooking_method: 'boiled'
Ingredient.create name: 'beef', cooking_method: 'poached'
Ingredient.create name: 'beef', cooking_method: 'steamed'
Ingredient.create name: 'beef', cooking_method: 'braised'
Ingredient.create name: 'beef', cooking_method: 'fried'
Ingredient.create name: 'beef', cooking_method: 'sautéed'
Ingredient.create name: 'beef', cooking_method: 'roasted'
Ingredient.create name: 'beef', cooking_method: 'grilled'








