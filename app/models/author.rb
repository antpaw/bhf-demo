class Author < ActiveRecord::Base
  
  default_scope -> {order('position ASC')}
  
end