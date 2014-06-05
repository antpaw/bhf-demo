Rails.application.routes.draw do
  
  mount Bhf::Engine, at: 'bhf'
  
  get 'admin', to: 'admin#login', as: :admin
  get 'reset_database', to: 'application#reset_database'
  
  root 'application#index'

end
