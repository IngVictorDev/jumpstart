class Photo < ApplicationRecord
  include ImageUploader::Attachment(:image)
end
