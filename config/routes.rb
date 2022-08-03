Rails.application.routes.draw do
  devise_for :users
  
  get '/meaning/:word' => 'meanings#words'
end
