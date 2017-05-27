class Song < ApplicationRecord
  belongs_to :album
  has_and_belongs_to_many :genres

  validates :name, presence: true, length: {maximum: 50}
  validates :name, uniqueness: {scope: :album}
  validates :url, presence: true

end
