class Song < ApplicationRecord
  belongs_to :album

  validates :name, presence: true, length: {maximum: 50}
  validates :name, uniqueness: {scope: :album}
  validates :url, presence: true

end
