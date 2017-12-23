class CreateSioris < ActiveRecord::Migration[5.1]
  def change
    create_table :sioris do |t|
      t.integer :user_id,   :null => false
      t.text    :content
      t.date    :departure_date
      
      t.timestamps
    end
    
    add_index:siori, [:user_id]
    add_index:siori, [:departure_date]
  end
end
