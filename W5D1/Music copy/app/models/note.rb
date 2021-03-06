class Note < ApplicationRecord

  validates :user_id, :track_id, :content, presence: true

  belongs_to :user

  belongs_to :track

  attr_reader :email

end
