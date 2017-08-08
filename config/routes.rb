Rails.application.routes.draw do
  # show all the recipes
  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'

  # show the form to make a new recipe
  get '/recipes/new' => 'recipes#new'
  # show one particular recipe
  get '/recipes/:id' => 'recipes#show'
  # actually make the new recipe, this is the route the form is pointed at
  post '/recipes' => 'recipes#create'

  # edit form
  get '/recipes/:id/edit' => 'recipes#edit'

  patch '/recipes/:id' => 'recipes#update'

  delete '/recipes/:id' => 'recipes#destroy'

  # show the user a form
  get '/new_recipe' => 'recipes#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# make a form
# user fills our form with info to make new recipe
# that info is sent through params to another action/url/whatever
# in the different action, I will grab that user info from params and magically make a new recipe in the database




# Begin the mini-capstone.
