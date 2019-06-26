class Music < ApplicationRecord
  has_many :posts, dependent: :destroy
end
