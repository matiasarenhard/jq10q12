class Fish < ApplicationRecord
  has_one :shark
  has_one :tuna
  validates :name, presence: true
  scope :find_custom, -> { Fish.where.not('fish.id' => nil)}
end
