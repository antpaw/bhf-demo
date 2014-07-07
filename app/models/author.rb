class Author < ActiveRecord::Base
  
  default_scope -> {order('position ASC')}
  has_many :posts
  
end