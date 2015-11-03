class ChangeLatLongType < ActiveRecord::Migration
  def change
    change_column :forcasts, :latitude, :float
    change_column :forcasts, :longitude, :float

  end
end
