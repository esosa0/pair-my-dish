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
Side.destroy_all

Aroma.create name: 'bacon', kind: 'meat'
Aroma.create name: 'leather', kind: 'earth'
Aroma.create name: 'coffee', kind: 'bake shop'
Aroma.create name: 'smoke', kind: 'tobacco shop'
Aroma.create name: 'toast', kind: 'bread'
Aroma.create name: 'orange', kind: 'fruit'
Aroma.create name: 'blackberry', kind: 'fruit'
Aroma.create name: 'raspberry', kind: 'fruit'
Aroma.create name: 'mulberry', kind: 'fruit'
Aroma.create name: 'lemon', kind: 'fruit'
Aroma.create name: 'strawberry', kind: 'fruit'
Aroma.create name: 'apricot', kind: 'fruit'
Aroma.create name: 'cherry', kind: 'fruit'
Aroma.create name: 'banana', kind: 'fruit'
Aroma.create name: 'lychee', kind: 'fruit'
Aroma.create name: 'butter', kind: 'bake shop'
Aroma.create name: 'almond', kind: 'nut'
Aroma.create name: 'chestnut', kind: 'nut'
Aroma.create name: 'coconut', kind: 'fruit'
Aroma.create name: 'hazelnut', kind: 'nut'
Aroma.create name: 'black pepper', kind: 'spice'
Aroma.create name: 'licorice', kind: 'bake shop'
Aroma.create name: 'honey', kind: 'bake shop'
Aroma.create name: 'tea', kind: 'bake shop'
Aroma.create name: 'tobacco', kind: 'tobacco shop'
Aroma.create name: 'eucalyptus', kind: 'herbal'
Aroma.create name: 'grass', kind: 'herbal'
Aroma.create name: 'green pepper', kind: 'vegetal'
Aroma.create name: 'pepperoni', kind: 'meat'
Aroma.create name: 'mint', kind: 'herbal'
Aroma.create name: 'grapefruit', kind: 'fruit'
Aroma.create name: 'melon', kind: 'fruit'
Aroma.create name: 'gravel', kind: 'mineral'
Aroma.create name: 'saline', kind: 'mineral'
Aroma.create name: 'petrol', kind: 'mineral'
Aroma.create name: 'chalk', kind: 'mineral'
Aroma.create name: 'apple', kind: 'fruit'
Aroma.create name: 'pear', kind: 'fruit'
Aroma.create name: 'green bean', kind: 'vegetal'
Aroma.create name: 'chervil', kind: 'herbal'
Aroma.create name: 'white pepper', kind: 'spice'
Aroma.create name: 'arugula', kind: 'vegetal'
Aroma.create name: 'yellow beet', kind: 'earth'
Aroma.create name: 'fennel', kind: 'vegetal'
Aroma.create name: 'mango', kind: 'fruit'
Aroma.create name: 'peach', kind: 'fruit'
Aroma.create name: 'pinapple', kind: 'fruit'
Aroma.create name: 'guava', kind: 'fruit'
Aroma.create name: 'black pepper', kind: 'spice'
Aroma.create name: 'ginger', kind: 'spice'
Aroma.create name: 'gooseberry', kind: 'fruit'
Aroma.create name: 'passion fruit', kind: 'fruit'
Aroma.create name: 'green bell pepper', kind: 'vegetal'
Aroma.create name: 'lemongrass', kind: 'herbal'
Aroma.create name: 'tomato', kind: 'vegetal'
Aroma.create name: 'thyme', kind: 'herbal'
Aroma.create name: 'vanilla', kind: 'bake shop'
Aroma.create name: 'mushroom', kind: 'earth'
Aroma.create name: 'asparagus', kind: 'vegetal'
Aroma.create name: 'sage', kind: 'herbal'
Aroma.create name: 'dill', kind: 'herbal'
Aroma.create name: 'pomegranate', kind: 'fruit'
Aroma.create name: 'chamomile', kind: 'herbal'
Aroma.create name: 'cream', kind: 'bake shop'
Aroma.create name: 'straw', kind: 'earth'
Aroma.create name: 'papaya', kind: 'fruit'
Aroma.create name: 'bread', kind: 'bread'
Aroma.create name: 'rosemary', kind: 'herbal'
Aroma.create name: 'chocolate', kind: 'bake shop'
Aroma.create name: 'plum', kind: 'fruit'
Aroma.create name: 'clay pot', kind: 'earth'
Aroma.create name: 'forrest floor', kind: 'earth'
Aroma.create name: 'cured meat', kind: 'meat'
Aroma.create name: 'bay leaf', kind: 'herbal'
Aroma.create name: 'red currant', kind: 'fruit'
Aroma.create name: 'black currant', kind: 'fruit'
Aroma.create name: 'majoram', kind: 'herbal'
Aroma.create name: 'anise', kind: 'spice'
Aroma.create name: 'radicchio', kind: 'vegetal'
Aroma.create name: 'macadamia', kind: 'nut'
Aroma.create name: 'clove', kind: 'spice'
Aroma.create name: 'red bell peppers', kind: 'vegetal'
Aroma.create name: 'fig', kind: 'fruit'
Aroma.create name: 'cinnamon', kind: 'spice'
Aroma.create name: 'allspice', kind: 'spice'
Aroma.create name: 'tarragon', kind: 'herbal'
Aroma.create name: 'basil', kind: 'herbal'
Aroma.create name: 'caramel', kind: 'bake shop'
Aroma.create name: 'rose', kind: 'floral'
Aroma.create name: 'raisin', kind: 'fruit'
Aroma.create name: 'jasmin', kind: 'floral'
Aroma.create name: 'black tea', kind: 'herbal'
Aroma.create name: 'nutmeg', kind: 'spice'
Aroma.create name: 'celery', kind: 'vegetal'
Aroma.create name: 'soil', kind: 'earth'
Aroma.create name: 'truffle', kind: 'earth'
Aroma.create name: 'oregano', kind: 'herbal'
Aroma.create name: 'violet', kind: 'floral'
Aroma.create name: 'cardamom', kind: 'spice'
Aroma.create name: 'cedar', kind: 'earth'
Aroma.create name: 'chard', kind: 'vegetal'
Aroma.create name: 'jam', kind: 'fruit'


User.create email: 'admin@example.com', password: '12345678', password_confirmation: '12345678', admin: true
User.create email: 'user@example.com', password: '12345678', password_confirmation: '12345678', admin: false

Wine.create name: 'albariño', body: 1, alcohol: 2, tannin: 0, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'grüner veltliner', body: 1, alcohol: 2, tannin: 0, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'pinot gris', body: 1, alcohol: 2, tannin: 0, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'sauvignon blanc', body: 1, alcohol: 2, tannin: 0, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'riesling', body: 2, alcohol: 1, tannin: 0, acid: 3, sweetness: 2, sparkling: false
Wine.create name: 'semillon', body: 2, alcohol: 2, tannin: 0, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'viognier', body: 2, alcohol: 3, tannin: 0, acid: 1, sweetness: 1, sparkling: false
Wine.create name: 'chenin blanc', body: 1, alcohol: 2, tannin: 0, acid: 3, sweetness: 2, sparkling: false
Wine.create name: 'chardonnay', body: 3, alcohol: 3, tannin: 0, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'rose', body: 4, alcohol: 2, tannin: 1, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'gamay', body: 5, alcohol: 1, tannin: 1, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'pinot noir', body: 5, alcohol: 2, tannin: 1, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'cabernet franc', body: 6, alcohol: 2, tannin: 2, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'carignan', body: 6, alcohol: 3, tannin: 2, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'carménère', body: 6, alcohol: 2, tannin: 2, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'grenache', body: 6, alcohol: 2, tannin: 2, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'mencía', body: 6, alcohol: 2, tannin: 2, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'sangiovese', body: 6, alcohol: 2, tannin: 2, acid: 3, sweetness: 1, sparkling: false
Wine.create name: 'zinfandel', body: 7, alcohol: 3, tannin: 2, acid: 1, sweetness: 1, sparkling: false
Wine.create name: 'merlot', body: 6, alcohol: 2, tannin: 2, acid: 2, sweetness: 1, sparkling: false
Wine.create name: 'cabernet sauvignon', body: 7, alcohol: 3, tannin: 3, acid: 2, sweetness: 1, sparkling: false

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

Side.create name: "potatoes", kind: 'vegetables'
Side.create name: "corn", kind: 'vegetables'
Side.create name: "olives", kind: 'vegetables'
Side.create name: 'green pepper', kind: 'vegetables'
Side.create name: 'green bean', kind: 'vegetables'
Side.create name: 'arugula', kind: 'vegetables'
Side.create name: 'yellow beet', kind: 'vegetables'
Side.create name: 'fennel', kind: 'vegetables'
Side.create name: 'green bell pepper', kind: 'vegetables'
Side.create name: 'tomato', kind: 'vegetables'
Side.create name: 'mushroom', kind: 'vegetables'
Side.create name: 'asparagus', kind: 'vegetables'
Side.create name: 'radicchio', kind: 'vegetables'
Side.create name: 'chard', kind: 'vegetables'
Side.create name: 'red bell peppers', kind: 'vegetables'
Side.create name: 'celery', kind: 'vegetables'
Side.create name: 'truffle', kind: 'vegetables'

Side.create name: 'bacon', kind: 'meats'
Side.create name: 'pepperoni', kind: 'meats'
Side.create name: 'jamon iberico', kind: 'meats'
Side.create name: 'sausage', kind: 'meats'

Side.create name: 'toast', kind: 'grains'
Side.create name: 'bread', kind: 'grains'
Side.create name: 'pasta', kind: 'grains'
Side.create name: 'rice', kind: 'grains'

Side.create name: 'orange', kind: 'fruits'
Side.create name: 'blackberry', kind: 'fruits'
Side.create name: 'blackberry', kind: 'fruits'
Side.create name: 'raspberry', kind: 'fruits'
Side.create name: 'mulberry', kind: 'fruits'
Side.create name: 'lemon', kind: 'fruits'
Side.create name: 'strawberry', kind: 'fruits'
Side.create name: 'apricot', kind: 'fruits'
Side.create name: 'cherry', kind: 'fruits'
Side.create name: 'banana', kind: 'fruits'
Side.create name: 'lychee', kind: 'fruits'
Side.create name: 'coconut', kind: 'fruits'
Side.create name: 'grapefruit', kind: 'fruits'
Side.create name: 'melon', kind: 'fruits'
Side.create name: 'apple', kind: 'fruits'
Side.create name: 'pear', kind: 'fruits'
Side.create name: 'mango', kind: 'fruits'
Side.create name: 'peach', kind: 'fruits'
Side.create name: 'pinapple', kind: 'fruits'
Side.create name: 'guava', kind: 'fruits'
Side.create name: 'gooseberry', kind: 'fruits'
Side.create name: 'passion fruit', kind: 'fruits'
Side.create name: 'pomegranate', kind: 'fruits'
Side.create name: 'papaya', kind: 'fruits'
Side.create name: 'plum', kind: 'fruits'
Side.create name: 'red currant', kind: 'fruits'
Side.create name: 'black currant', kind: 'fruits'
Side.create name: 'fig', kind: 'fruits'
Side.create name: 'raisin', kind: 'fruits'

Side.create name: 'coffee', kind: 'others'
Side.create name: 'butter', kind: 'others'
Side.create name: 'honey', kind: 'others'
Side.create name: 'vanilla', kind: 'others'
Side.create name: 'cream', kind: 'others'
Side.create name: 'chocolate', kind: 'others'
Side.create name: 'jam', kind: 'others'
Side.create name: 'caramel', kind: 'others'

Side.create name: 'almond', kind: 'nuts'
Side.create name: 'chestnut', kind: 'nuts'
Side.create name: 'hazelnut', kind: 'nuts'
Side.create name: 'macadamia', kind: 'nuts'

Side.create name: 'black pepper', kind: 'spices'
Side.create name: 'licorice', kind: 'spices'
Side.create name: 'white pepper', kind: 'spices'
Side.create name: 'black pepper', kind: 'spices'
Side.create name: 'ginger', kind: 'spices'
Side.create name: 'anise', kind: 'spices'
Side.create name: 'clove', kind: 'spices'
Side.create name: 'cinnamon', kind: 'spices'
Side.create name: 'allspice', kind: 'spices'
Side.create name: 'nutmeg', kind: 'spices'
Side.create name: 'cardamom', kind: 'spices'

Side.create name: 'eucalyptus', kind: 'herbs'
Side.create name: 'mint', kind: 'herbs'
Side.create name: 'chervil', kind: 'herbs'
Side.create name: 'lemongrass', kind: 'herbs'
Side.create name: 'thyme', kind: 'herbs'
Side.create name: 'sage', kind: 'herbs'
Side.create name: 'dill', kind: 'herbs'
Side.create name: 'rosemary', kind: 'herbs'
Side.create name: 'bay leaf', kind: 'herbs'
Side.create name: 'majoram', kind: 'herbs'
Side.create name: 'tarragon', kind: 'herbs'
Side.create name: 'basil', kind: 'herbs'
Side.create name: 'oregano', kind: 'herbs'

















