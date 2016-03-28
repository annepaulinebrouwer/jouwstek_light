class GardenReview < ActiveRecord::Base
  validates :description, :stars, presence: true
  validates :user_id, :allotment_id, presence: true
  belongs_to :user
  belongs_to :allotment
end
