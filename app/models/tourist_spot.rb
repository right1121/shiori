class TouristSpot < ApplicationRecord
    belongs_to :tourist_days
    has_one :tourist_details, :dependent => :destroy
end
