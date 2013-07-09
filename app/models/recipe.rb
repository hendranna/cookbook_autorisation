class Recipe < ActiveRecord::Base
  
  attr_accessible :name, :course, :cooktime, :servingsize, :instructions, :image, :book_id, :ingredient_ids
  belongs_to :book
  has_and_belongs_to_many :ingredients
  validates :name, presence: true, length:{in:(5..50)} 
  validates :course, presence: true
  validates :cooktime, length: {in:(5..60)}
  validates :servingsize, length: {in:(1..6)}
  validates :instructions, presence: true, length: {in:(50..500)}
  

  def active?
  	false
  end

  def active_image
  	unless active?
  		errors.add(:base, 'The image is not active')
  	end
  end


end
