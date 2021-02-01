class Album < ApplicationRecord
  belongs_to :artist
  
  has_many :reviews 
  has_many :users, through: :reviews
  
  has_many :clips, foreign_key: 'album_id'
  has_many :users, through: :clips
  
  mount_uploader :image, ImageUploader
  

  
end
