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
end
