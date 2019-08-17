class Album < ApplicationRecord
  belongs_to :artist
  
  has_many :reviews
  has_many :users, through: :reviews
  
end