class Artist < ApplicationRecord
  
  has_many :albums
  
  mount_uploader :image, ImageUploader
end
