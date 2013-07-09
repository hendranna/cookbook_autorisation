#coding: utf-8

module IngredientsHelper

	def uk_currency(price)
		pounds = (price/1.49).round(2)
		return "£#{pounds}"
	end



end