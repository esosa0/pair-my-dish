class Wine < ActiveRecord::Base
  has_and_belongs_to_many :aromas
  validates :name, presence: true
  validates :body, presence: true  
  validates :alcohol, presence: true
  validates :tannin, presence: true 
  validates :acid, presence: true
  validates :sweetness, presence: true     
end
