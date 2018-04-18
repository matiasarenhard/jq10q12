class Shark < ApplicationRecord
  belongs_to :fish
  scope :find_by_color, ->(color) { where(:color => color) } 
end
