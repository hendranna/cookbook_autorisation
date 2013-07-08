class Ingredient < ActiveRecord::Base
  attr_accessible :name, :measurement, :cost, :image
  has_and_belongs_to_many :recipes
end
