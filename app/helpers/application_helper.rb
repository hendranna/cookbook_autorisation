#coding: utf-8
module ApplicationHelper
	def total_cost(recipe)
		prices = recipe.ingredients.map {|ingredient|ingredient.cost.to_f}
		dollar_total = prices.inject(:+).round(2)
		pound_total = (prices.inject(:+) /1.49).round(2)
		return "$#{dollar_total} or #{pound_total}"
	end
end
