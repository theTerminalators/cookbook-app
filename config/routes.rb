Rails.application.routes.draw do
  get '/one_recipe_url' => 'recipes#one_recipe_method'
  # show the user a form
  get '/new_recipe' => 'recipes#show'
  # actually make the new recipe, this is the route the form is pointed at
  post '/make_the_recipe' => 'recipes#make'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# make a form
# user fills our form with info to make new recipe
# that info is sent through params to another action/url/whatever
# in the different action, I will grab that user info from params and magically make a new recipe in the database




# Begin the mini-capstone.
