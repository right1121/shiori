class CreateTravelDays < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_days do |t|

      t.timestamps
    end
  end
end
