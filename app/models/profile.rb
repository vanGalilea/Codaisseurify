class Profile < ApplicationRecord
  belongs_to :user
  has_many :favourites, dependent: :destroy
  has_many :fav_songs, through: :favourites, source: :song

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
