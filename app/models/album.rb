class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy

  validates :name, presence: true, length: {maximum: 50}
  validates :name, uniqueness: true

end
