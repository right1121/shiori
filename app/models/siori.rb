class Siori < ApplicationRecord
    has_many :travel_groups
    has_many :users, through: travel_groups
    has_one :travel_day
end
