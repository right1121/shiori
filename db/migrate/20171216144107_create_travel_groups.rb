class CreateTravelGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_groups do |t|
      t.references :user,   index: true,   foreign_key: true
      t.references :siori,  index: true,  foreign_key: true
      
      t.timestamps
    end
  end
end
