class Siori < ApplicationRecord
    has_many :travel_groups, dependent: :destroy
    has_many :users, through: travel_groups
    has_one :travel_day, dependent: :destroy
end
