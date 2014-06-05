Rails.application.routes.draw do
  
  # bhf can be found at /bhf
  mount Bhf::Engine, at: 'bhf'
  
  # admin_url is given to bhf via initializers/bhf.rb, the auth logic is defined in admin_controller
  get 'admin', to: 'admin#login', as: :admin
  
  # the database reset button in the footer links via this
  get 'reset_database', to: 'application#reset_database'
  
  root 'application#index'

end
