class Theme < ApplicationRecord
  has_many :posts, dependent: :destroy
end
