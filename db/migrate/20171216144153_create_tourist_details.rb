class CreateTouristDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :tourist_details do |t|

      t.timestamps
    end
  end
end
