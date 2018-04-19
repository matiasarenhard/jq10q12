class Shark < ApplicationRecord
  belongs_to :fish
  validates :color, presence: true
  scope :find_by_color, ->(color) { where(:color => color) }
end
