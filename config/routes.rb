Rails.application.routes.draw do
  devise_for :users
  
  get '/words/:word' => 'meanings#words'
  resources :meanings
end
