class Service < ApplicationRecord
  has_many_attached :images
   scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
  mount_uploader :photo, PhotoUploader
  validates :category, presence: true

  include PgSearch
  pg_search_scope :search_by_category, against: :category,
     using: {
     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
