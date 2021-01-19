Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/new_book'
  root 'pages#home'
  devise_for :users
end
