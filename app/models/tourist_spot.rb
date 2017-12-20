class TouristSpot < ApplicationRecord
    has_many :tourist_days
    belongs_to :tourist_details, :dependent => :destroy
end
