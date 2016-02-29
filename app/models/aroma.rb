class Aroma < ActiveRecord::Base
  has_and_belongs_to_many :wines
  has_and_belongs_to_many :sides
  validates :name, presence: true, uniqueness: true
end
