class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 65_535 }
  validates :comment, presence: true, length: { maximum: 65_535 }

  belongs_to :user
  belongs_to :theme
end
