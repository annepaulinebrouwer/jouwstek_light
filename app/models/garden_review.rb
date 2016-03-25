class GardenReview < ActiveRecord::Base
  validates :description, :stars, presence: true
  validates :user_id, uniqueness: { scope: :allotment_id }
  belongs_to :user
  belongs_to :allotment
end
