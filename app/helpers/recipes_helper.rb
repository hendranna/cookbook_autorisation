module RecipesHelper
	def checkbox(recipe, ingredient)
		check_box_tag 'recipe[ingredient_ids] []', ingredient.id, ingredient.in?(recipe.ingredients.to_a)
	end
end