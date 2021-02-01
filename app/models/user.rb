class User < ApplicationRecord
  validates :name, :presence => true, :length => { :maximum => 50 }
  validates :email, :presence => true, :length => { :maximum => 255 },
                    :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    :uniqueness => { :case_sensitive => false }
  validates :introduce, :length => { :maximum => 500 }
  
  has_secure_password
  
  mount_uploader :image, ImageUploader
  
  has_many :reviews
  has_many :albums, :through => :reviews
  
  has_many :relationships
  has_many :followings, :through => :relationships, :source => :follow
  has_many :reverses_of_relationship, :class_name => 'Relationship', :foreign_key => 'follow_id'
  has_many :followers, :through => :reverses_of_relationship, :source => :user
  
  has_many :favorites
  has_many :favreviews, :through => :favorites, :source => :review
  
  has_many :clips
  has_many :clip_albums, :through => :clips, :source => :album
  
  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(:follow_id => other_user.id)
    end
  end
  
  def unfollow(other_user)
    relationship = self.relationships.find_by(:follow_id => other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end
  
  def feed_reviews
    Review.where(:user_id => self.following_ids + [self.id])
  end
  
  def like(review)
    favorites.find_or_create_by(:review_id => review.id)
  end

  #お気に入り削除
  def unlike(review)
    favorite = favorites.find_by(:review_id => review.id)
    favorite.destroy if favorite
  end

  #お気にり登録判定
  def favreview?(review)
    self.favreviews.include?(review)
  end
  
  #クリップメソッド
  def clip(album)
    clips.find_or_create_by(:album_id => album.id)
  end
  
  #クリップ削除
  def unclip(album)
    clip = clips.find_by(:album_id => album.id)
    clip.destroy if clip
  end
  
  #クリップ登録判定
  def clip_album?(album)
    self.clip_albums.include?(album)
  end
  
end
