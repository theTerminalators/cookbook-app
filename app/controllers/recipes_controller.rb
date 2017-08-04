class RecipesController < ApplicationController
  def one_recipe_method
    @recipe = Recipe.first

    render 'one_recipe_view.html.erb'
  end

  def show
    #  show the user the form
    render 'show.html.erb'
  end

  def make
    # where the form goes once it's submitted
    recipe1 = Recipe.new(chef: params[:chef], ingredients: params[:ingredients], prep_time: params[:prep_time])
    recipe1.save
    render 'create.html.erb'
  end
end
