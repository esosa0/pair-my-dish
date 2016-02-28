class Wine < ActiveRecord::Base
  BODY_TYPES = { 
    "Light-bodied white" => 1, 
    "Medium-bodied white" => 2, 
    "Full-bodied white" => 3, 
    "Rose" => 4, 
    "Light-bodied red" => 5, 
    "Medium-bodied red" => 6, 
    "Full-bodied red" => 7 
  }

  ALCOHOL_LEVELS = {
    "Low-alcohol (under 12.5%)" => 1,
    "Medium-alcohol (12.5% - 13.5%)" => 2, 
    "High-alcohol (13.5% - 15%)" => 3
  }

  TANNIN_LEVELS = {
    "No tannin (check for white wines)" => 0,
    "Low-tannin"=> 1,
    "Medium-tannin"=> 2,
    "High-tannin"=> 3
  }

  ACID_LEVELS = {
    "Low-acid" => 1,
    "Medium-acid"=> 2,
    "High-acid"=> 3,
  }

  SWEETNESS_LEVELS = {
    "Dry" => 1,
    "Off dry"=> 2,
    "Sweet"=> 3,
  }

  has_and_belongs_to_many :aromas
  validates :name, presence: true
  validates :body, presence: true  
  validates :alcohol, presence: true
  validates :tannin, presence: true 
  validates :acid, presence: true
  validates :sweetness, presence: true   

  def self.pair(dish)
    body_min = dish.ingredient.body_min
    body_max = dish.ingredient.body_max
    wine_selection = Wine.where(body: (body_min..body_max))

    if dish.cooking_method.dry
      wine_selection_2 = wine_selection.where(body: (body_min + 1 ..body_max))
    else
      wine_selection_2 = wine_selection.where(body: (body_min..body_max - 1))
    end

    alcohol_min = dish.sauce.alcohol_min
    alcohol_max = dish.sauce.alcohol_max
    tannin_min = dish.sauce.tannin_min
    tannin_max = dish.sauce.tannin_max
    acid_min = dish.sauce.acid_min
    acid_max = dish.sauce.acid_max

    wine_selection_3 = wine_selection_2.where(alcohol: (alcohol_min..alcohol_max) && (tannin_min..tannin_max) && (acid_min..acid_max))
    return wine_selection_3




  end

end
