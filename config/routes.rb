Rails.application.routes.draw do
  resources :character_notes
  resources :character_skills
  resources :skills
  resources :characters
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
