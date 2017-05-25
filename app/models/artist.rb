class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}
end
