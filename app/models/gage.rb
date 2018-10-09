class Gage < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    mount_uploader :audio, PhotoUploader
end
