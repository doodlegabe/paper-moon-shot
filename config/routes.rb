Rails.application.routes.draw do
  resources :text_blocks
  get 'welcome/home'
  get 'welcome/new_book'
  get 'welcome/new_page'
  get 'welcome/new_worksheet'
  get 'welcome/new_feedback_collector'
  get 'welcome/new_message'
  get 'welcome/back_to_dashboard'

  root 'pages#home'
  devise_for :users
end
