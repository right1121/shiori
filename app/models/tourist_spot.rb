class TouristSpot < ApplicationRecord
    belongs_to :travel_day
    has_many :tourist_spots
    has_one :tourist_details
end
