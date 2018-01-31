class TravelDay < ApplicationRecord
    belongs_to :siori
    has_many :tourist_spots
    
    accepts_nested_attributes_for :tourist_spots, allow_destroy: true
end
