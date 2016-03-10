class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_one :garden, dependent: :destroy, foreign_key: 'owner_id'

  has_many :garden_reviews, dependent: :destroy
  has_many :user_reviews, dependent: :destroy
  has_many :owner_reviews, dependent: :destroy, class_name: 'UserReview', foreign_key: 'owner_id'
  has_many :rented_gardens, through: :allotments

  mount_uploader :photo, PhotoUploader
end