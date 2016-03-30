class Allotment < ActiveRecord::Base
  belongs_to :garden
  belongs_to :user
  has_many :garden_reviews, dependent: :destroy

  validates :start_day, :end_day, :message, :garden_id, :user_id, presence: true
end

