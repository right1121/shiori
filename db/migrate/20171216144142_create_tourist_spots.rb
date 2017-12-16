class CreateTouristSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :tourist_spots do |t|

      t.timestamps
    end
  end
end
