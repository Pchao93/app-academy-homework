class Album < ApplicationRecord
  validates :band, :title, :year, presence: true
  before_validation :cast_params
  def band_name=(band_name)
    @band = Band.find_by(name: band_name)
    self.band_id = @band.id
  end

  def cast_params
    self.studio = false if self.studio == false

  end

  # def year=(year)
  #   self.year = year.to_i
  # end

  belongs_to :band

  has_many :tracks,
  dependent: :destroy

end
