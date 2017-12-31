class CreateTouristSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :tourist_spots do |t|
      t.integer :travel_day_id, null: false
      t.integer :order,         null: false
      t.time    :arrival_time
      t.integer :duration
      
      t.timestamps
    end
  end
end
