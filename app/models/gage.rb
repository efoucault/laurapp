class Gage < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    mount_uploader :audio, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
