class CreateTravelDays < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_days do |t|
      t.integer :travel_days, null: false
      t.integer :siori_id,    null: false
      t.integer :day,         null: false, default: 1
      
      t.timestamps
    end
    add_index:travel_days, [:siori_id]
  end
end
