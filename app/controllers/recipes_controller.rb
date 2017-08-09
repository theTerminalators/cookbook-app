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
    recipe = Recipe.new(
      title: params[:title],
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      image: params[:image],
      prep_time: params[:prep_time]
    )
    recipe.save
    flash[:success] = "You just created a new recipe"
    redirect_to "/recipes/#{recipe.id}"
  end

  def edit
    # on my form, show the item that I am editing
    # grab the item I am editing from the DB
    @recipe = Recipe.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    # get the correct recipe
    recipe = Recipe.find_by(id: params[:id])
    recipe.update(
      title: params[:title],
      chef: params[:chef],
      ingredients: params[:ingredients],
      prep_time: params[:prep_time],
      directions: params[:directions]
    )
    # need the id from the recipe i want to edit
    # edit that recipe with the information from the form

    flash[:info] = "You just updated the recipe with the title of #{recipe.title}"
    flash[:success] = "You now have #{Recipe.count} recipes"

    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    #  write some code to delete the thing
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    flash[:danger] = "You just deleted the recipe with the title of #{recipe.title}"
    redirect_to "/recipes"
  end
end
