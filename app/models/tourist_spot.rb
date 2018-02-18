class TouristSpot < ApplicationRecord
    include RankedModel
    ranks :order, with_same: :travel_day_id
    
    belongs_to :travel_day
    has_one :tourist_detail
    accepts_nested_attributes_for :tourist_detail, allow_destroy: true
end
