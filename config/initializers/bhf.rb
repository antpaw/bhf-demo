Bhf.configure do |config|
  config.on_login_fail = :admin_url
  config.session_account_id = :no_account
end