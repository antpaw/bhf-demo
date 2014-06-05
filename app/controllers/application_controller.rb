class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout false
  
  def index
    @static = Static.where(id: 1).first
  end
  
  def reset_database
    load "#{Rails.root}/db/seeds.rb" 
    redirect_to params[:return_to] || bhf.root_url
  end
end
