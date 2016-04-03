class Idea < ActiveRecord::Base
has_many :comments
mount_uploader :picture, PictureUploader
belongs_to :user
belongs_to :user
end
