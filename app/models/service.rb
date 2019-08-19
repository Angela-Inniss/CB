class Service < ApplicationRecord
  has_many_attached :images
  mount_uploader :photo, PhotoUploader
  validates :category, presence: true
  include PgSearch
  pg_search_scope :search_by_category, against: :category,
     using: {
     tsearch: { prefix: true } # <-- now `superman batm` will return something!
   }
end
