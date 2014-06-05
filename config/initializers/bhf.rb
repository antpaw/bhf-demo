module Bhf
  class Engine < Rails::Engine
    
    config.bhf.on_login_fail = :admin_url
    
  end
end