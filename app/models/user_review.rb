class UserReview < ActiveRecord::Base
  validates :description, :stars, presence: true
  validates :owner_id, uniqueness: { scope: :user_id }
  belongs_to :owner, class_name: 'User'
  belongs_to :user
end
