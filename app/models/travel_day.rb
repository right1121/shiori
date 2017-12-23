class TravelDay < ApplicationRecord
    belongs_to :siori
    has_many :tourist_spots, dependent: :destroy
end
