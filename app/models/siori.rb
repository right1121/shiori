class Siori < ApplicationRecord
    has_many :travel_groups, dependent: :destroy
    has_many :users, through: :travel_groups
    
    has_many :travel_day
    accepts_nested_attributes_for :travel_day, allow_destroy: true
end
