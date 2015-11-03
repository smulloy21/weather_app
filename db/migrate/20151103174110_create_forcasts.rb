class CreateForcasts < ActiveRecord::Migration
  def change
    create_table :forcasts do |t|
      t.string :address
      t.integer :longitude
      t.integer :latitude
      t.string :response

      t.timestamps null: false
    end
  end
end
