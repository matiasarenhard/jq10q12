class Tuna < ApplicationRecord
  belongs_to :fish
  validates :origin, presence: true
  scope :find_by_origin, ->(origin) { where(:origin => origin) }
end
