class GardenReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :allotment
  validates :description, :stars, presence: true
  validates :user_id, :allotment_id, presence: true
end
