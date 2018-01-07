class TouristSpot < ApplicationRecord
    belongs_to :tourist_days
    has_one :tourist_details
    accepts_nested_attributes_for :tourist_details, allow_destroy: true
end
