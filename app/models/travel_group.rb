class TravelGroup < ApplicationRecord
    belongs_to :user_id
    belongs_to :siori_id
end
