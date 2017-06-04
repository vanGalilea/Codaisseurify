class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true, length: {maximum: 100}
  validates :name, uniqueness: true
  validates :description, presence: true, length: {maximum: 500}
end
