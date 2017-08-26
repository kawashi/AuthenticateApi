class ImagePost < ApplicationRecord
  mount_uploader :image, PhotoUploader
end
