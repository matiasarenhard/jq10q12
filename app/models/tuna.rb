class Tuna < ApplicationRecord
  belongs_to :Fish
  scope :find_by_origin, ->(origin) { where(:origin => origin) } 
end
