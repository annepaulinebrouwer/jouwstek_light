class Garden < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'

  has_many :allotments, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :photo, PhotoUploader
end
