class RecipesController < ApplicationController
  include RecipesHelper

  before_filter :signed_in_user, only: [:create, :new, :edit, :update, :destroy]
  before_filter :check_recipe_owner, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create recipe_params
    redirect_to(recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update_attributes recipe_params
    redirect_to(recipe)
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect_to(recipes_path)
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :course, :cooktime, :servingsize, :instructions, :image)
    end
end
