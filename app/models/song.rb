class Song < ApplicationRecord
  belongs_to :album
  has_and_belongs_to_many :genres
  has_many :favourites, dependent: :destroy
  has_many :profiles, through: :favourites, source: :profile

  validates :name, presence: true, length: {maximum: 50}
  validates :name, uniqueness: true
  validates :url, presence: true

end
