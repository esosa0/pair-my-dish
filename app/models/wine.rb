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
    ingredient = dish.ingredient
    sauce = dish.sauce
    
    if dish.cooking_method.dry
      wine_selection = Wine.where(
        body: (ingredient.body_min + 1 ..ingredient.body_max)
      )
    else
      wine_selection = Wine.where(
        body: (ingredient.body_min..ingredient.body_max - 1)
      )
    end

    wine_selection_2 = wine_selection.where(
      alcohol: (sauce.alcohol_min..sauce.alcohol_max),
      tannin: (sauce.tannin_min..sauce.tannin_max),
      acid: (sauce.acid_min..sauce.acid_max)
    )

    aromas = Aroma.where(aromas_sides: { side_id: dish.side_ids }).joins(:sides).uniq

    if aromas.count > 0
      wine_selection = wine_selection_2.joins(:aromas).where(
        aromas_wines: { aroma_id: aromas }
      ).uniq
      if wine_selection.count == 0
        return wine_selection_2
      end
    end

    return wine_selection
  end

end
