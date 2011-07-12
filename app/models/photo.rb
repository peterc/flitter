class Photo < ActiveRecord::Base
  default_scope order('id desc').limit(25)
  mount_uploader :photo, PhotoUploader
  
  belongs_to :user
end
