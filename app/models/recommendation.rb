class Recommendation < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
