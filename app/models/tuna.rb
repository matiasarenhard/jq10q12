class Tuna < ApplicationRecord
  belongs_to :fish
  scope :find_by_origin, ->(origin) { where(:origin => origin) } 
end
