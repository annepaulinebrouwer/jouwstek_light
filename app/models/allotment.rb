class Allotment < ActiveRecord::Base
  belongs_to :garden
  belongs_to :user

  has_many :garden_reviews, dependent: :destroy
end
