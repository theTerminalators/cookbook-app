Rails.application.routes.draw do
  get '/one_recipe_url' => 'recipes#one_recipe_method'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
