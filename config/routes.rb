Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'review#index'
  get 'review/new'

  post 'review/record'

  get 'review/index'
  get 'review/destroy/:review_id' => 'review#destroy'
  get 'review/edit/:review_id' => 'review#edit'
  patch 'review/update/:review_id' => 'review#update'
end