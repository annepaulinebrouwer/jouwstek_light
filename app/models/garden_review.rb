class GardenReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :allotment
end
