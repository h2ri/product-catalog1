Rails.application.routes.draw do
  resources :manufacturers
  resources :verticals
  resources :categories
  resources :product_details
  resources :product_variants
  resources :variant_values
  resources :variants
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
