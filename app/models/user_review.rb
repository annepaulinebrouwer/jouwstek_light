class UserReview < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  belongs_to :user
  validates :description, :stars, :owner_id, presence: true
end
