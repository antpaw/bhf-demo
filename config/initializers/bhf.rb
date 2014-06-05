module Bhf
  class Engine < Rails::Engine
    
    config.on_login_fail = :admin_url
    
  end
end