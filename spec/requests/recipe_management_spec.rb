require 'spec_helper'

describe 'Recipe Management' do
  let(:recipe) { FactoryGirl.create(:recipe) }
  let(:recipe_attributes) { FactoryGirl.attributes_for(:recipe, name: "Pork Chops") }

  before :each do
    ApplicationController.any_instance.stub(:current_user).and_return(recipe.user)
  end

  describe 'edit a recipe' do

    it 'updates recipe in database' do
      get "recipes/#{recipe.id}/edit"

      expect(response.status).to eq(200)
      expect(response).to render_template(:edit)
      expect(response.body).to include("Name", "Course")

      put "/recipes/#{recipe.id}", recipe: recipe_attributes

      expect(response).to redirect_to(recipe)
      follow_redirect!

      expect(response.body).to include("Pork Chops")
    end

  end

end