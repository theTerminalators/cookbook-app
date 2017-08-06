class RecipesController < ApplicationController
  def index
    # show all the recipes, grab all the recipes from the db
    @recipes = Recipe.all
    render 'index.html.erb'
  end

  def show
    url_id = params[:id]
    @recipe = Recipe.find_by(id: url_id)
    render 'show.html.erb'
  end

  def new
    # show some form
    render 'new.html.erb'
  end

  def create
    # where the form goes once it's submitted
    recipe1 = Recipe.new(chef: params[:chef], ingredients: params[:ingredients], prep_time: params[:prep_time])
    recipe1.save
    render 'create.html.erb'
  end
end
