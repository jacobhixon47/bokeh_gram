class Comment < ActiveRecord::Base
  belongs_to :image
  validates :content, :user_id, :image_id, :presence => true
end
