class Allotment < ActiveRecord::Base
  validates :start_day, :end_day, :message, presence: true
  validates :garden_id, uniqueness: { scope: :user_id}
  belongs_to :garden
  belongs_to :user

  has_many :garden_reviews, dependent: :destroy
end

