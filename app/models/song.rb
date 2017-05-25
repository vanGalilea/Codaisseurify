class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true, length: {maximum: 50}
  validates :url, presence: true
end
