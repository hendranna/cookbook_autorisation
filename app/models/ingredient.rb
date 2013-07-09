class Ingredient < ActiveRecord::Base

  attr_accessible :name, :measurement, :cost, :image
  has_and_belongs_to_many :recipes
  validates :name, presence: true
  validates :cost, length: {in: (1..50)}
 

  def active?
  	false
  end

  def active_image
  	unless active?
  		errors.add(:base, 'The image is not active')
  	end
  end


end
