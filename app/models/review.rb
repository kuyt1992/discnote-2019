class Review < ApplicationRecord
  belongs_to :user
  belongs_to :album
  
  #validates :body, presence: true, length: { maximum: 2000 }
  #validates :rate, numericality: { greater_than_or_equal_to:0.0, less_than_or_equal_to:5.0 }
  
  validates :rate, presence: true
  
  has_many :favorites, foreign_key: 'review_id', dependent: :destroy
  has_many :users, through: :favorites
  
end
