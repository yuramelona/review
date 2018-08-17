Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#main'
  get 'review/new'

  post 'review/record'

  get 'review/index'
  get 'review/destroy/:review_id' => 'review#destroy'
  get 'review/edit/:review_id' => 'review#edit'
  patch 'review/update/:review_id' => 'review#update'

  get 'cafe/new'

  post 'cafe/record'

  get 'cafe/index'
  get 'cafe/destroy/:cafe_id' => 'cafe#destroy'
  get 'cafe/edit/:cafe_id' => 'cafe#edit'
  patch 'cafe/update/:cafe_id' => 'cafe#update'
end