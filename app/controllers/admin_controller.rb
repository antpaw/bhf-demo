class AdminController < ApplicationController
  
  http_basic_authenticate_with name: 'admin', password: 'bhf'
  
  def login
    session[:is_admin] = true
    redirect_to bhf.root_url
  end
  
end
