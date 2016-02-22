class Wine < ActiveRecord::Base
  validates :name, presence: true
  validates :body, presence: true  
  validates :alcohol, presence: true
  validates :tannin, presence: true 
  validates :acid, presence: true
  validates :sweetness, presence: true     
end
