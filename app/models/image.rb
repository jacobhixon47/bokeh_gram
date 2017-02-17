class Image < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_attached_file :picture, :styles => { :large => "800x800>", :medium => "500x500>", :thumb => "100x100" }

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
