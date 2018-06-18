class Garden < ActiveRecord::Base

  belongs_to :owner, class_name: 'User'

  has_many :allotments, dependent: :destroy
  has_many :garden_reviews, through: :allotments

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  validates :address, presence: true
  validates :description, :title, :photo, :city, presence: true

  mount_uploader :photo, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader

  def full_address
    "#{address}, #{city}"
  end

  def full_address_changed?
    address_changed? || city_changed?
  end

  def photos
    [photo, photo2,photo3].select { |photo| photo.present? }
  end
end
