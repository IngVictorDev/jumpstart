class AccountVerificationDocument < ApplicationRecord
    include ImageUploader::Attachment(:image)
end
