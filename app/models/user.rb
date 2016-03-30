class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_one :garden, dependent: :destroy, foreign_key: 'owner_id'

  has_many :allotments, dependent: :destroy
  has_many :garden_allotments, through: :garden, source: "allotments"
  has_many :garden_reviews, dependent: :destroy
  has_many :user_reviews, dependent: :destroy
  has_many :owner_reviews, dependent: :destroy, class_name: 'UserReview', foreign_key: 'owner_id'
  has_many :rented_gardens, through: :allotments

  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  def fullname
    "#{first_name} #{last_name}"
  end

  def garden_destroyable?
    self.garden.allotments.each do |allotment|
      if allotment.request_status == "pending"
        return false
      end
    end
    return true
  end

  def profile_complete?
    if self.first_name.nil? || self.last_name.nil? || self.photo.nil? || self.description.nil?
      return false
    end
      return true
  end
end
