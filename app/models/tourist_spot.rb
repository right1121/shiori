class TouristSpot < ApplicationRecord
    belongs_to :travel_day
    has_one :tourist_detail
    accepts_nested_attributes_for :tourist_detail, allow_destroy: true
end
