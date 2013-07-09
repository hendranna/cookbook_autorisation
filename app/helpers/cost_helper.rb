#coding: utf-8
module CostHelper
	def total_cost(recipe)
		prices = recipe.ingredients.map {|ingredient|ingredient.cost.to_f}
		dollar_total = prices.inject(:+).round(2)
		pound_total = (prices.inject(:+) /1.49).round(2)
		return "$#{dollar_total} or #{pound_total}"
	end
	
	def uk_currency(price)
		pounds = (price/1.49).round(2)
		return "#{pounds}"
	end

end