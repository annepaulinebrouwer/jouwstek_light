class Garden < ActiveRecord::Base
  validates :address, uniqueness: true, presence: true
  validates :description, :title, :photo, :city, presence: true

  belongs_to :owner, class_name: 'User'

  has_many :allotments, dependent: :destroy
  has_many :garden_reviews, through: :allotments

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :photo, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader

  def photos
    [photo, photo2,photo3].select { |photo| photo.present? }
  end
end
