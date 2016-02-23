class Aroma < ActiveRecord::Base
  has_and_belongs_to_many :wines
  validates :name, presence: true, uniqueness: true
end
