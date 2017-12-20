class House < ApplicationRecord
  validates :city, presence: true
  has_many(
    :people,
    class_name: 'Person',
    foreign_key: :house_id,
    primary_key: :id
  )
end
