class Post < ActiveRecord::Base
  
  belongs_to :category
  belongs_to :author
  
  default_scope -> { order('published_at DESC') }
  default_scope -> { where(published: true) }
  scope :all_posts, -> {except(:where)}
  
  
  validates_length_of :headline, minimum: 3
  validates_presence_of :category_id
  
  def published_at
    super || Time.now
  end
  
end
