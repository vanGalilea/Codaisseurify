class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}
end
