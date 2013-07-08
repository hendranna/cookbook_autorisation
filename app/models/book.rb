class Book < ActiveRecord::Base
  attr_accessible :title, :cuisine, :chef, :image, :recipe_ids
  has_many :recipes
end
