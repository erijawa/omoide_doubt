class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 65_535 }
  validates :comment, presence: true, length: { maximum: 65_535 }

  belongs_to :user

  mount_uploader :post_image, PostImageUploader
end
