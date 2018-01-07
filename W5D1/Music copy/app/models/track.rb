class Track < ApplicationRecord
  validates :album_id, :title, :ord, presence: true

  def album_name=(album_name)
    self.album_id = Album.find_by(title: album_name).id
  end

  belongs_to :album

  has_many :notes,
  dependent: :destroy

  has_one :band,
  through: :album,
  source: :band
end
