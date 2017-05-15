class Home < ActiveRecord::Base
  mount_uploader :background_image, PhotoUploader
end
