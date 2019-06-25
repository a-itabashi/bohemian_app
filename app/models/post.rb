class Post < ApplicationRecord
  belongs_to :music

  validates :content, presence: true
end
