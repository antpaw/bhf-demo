desc 'This task is called by the Heroku scheduler add-on'
task reset_database: :environment do
  load "#{Rails.root}/db/seeds.rb" 
end
