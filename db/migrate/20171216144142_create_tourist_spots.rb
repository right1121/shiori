class CreateTouristSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :tourist_spots do |t|
      t.integer :travel_day_id
      t.integer :order
      t.time    :arrival_time
      t.integer :duration
      
      t.timestamps
    end
  end
end
