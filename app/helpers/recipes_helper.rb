module RecipesHelper
	def check_recipe_owner
    recipe = current_user.recipes.where(:id => params[:id]).first
    if recipe.nil?
      flash[:error] = "That's not your recipe."
      redirect_to recipe_path(params[:id])
    end
  end
end
