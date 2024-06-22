class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         mount_uploader :image, ImageUploader
         has_many :tweets
         has_many :tweets, dependent: :destroy 
         validates :name, presence: true 
         validates :profile, length: { maximum: 200 } 
         has_many :goals
         has_many :Jobs
         has_many :posts
         has_many :likes, dependent: :destroy
         has_many :liked_tweets, through: :likes, source: :tweet
         def already_liked?(tweet)
          self.likes.exists?(tweet_id: tweet.id)
        end
        has_many :comments, dependent: :destroy
        end