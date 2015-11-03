class ChangeColumnResponse < ActiveRecord::Migration
  def change
    enable_extension 'hstore'
    remove_column :forcasts, :response, :string
    add_column :forcasts, :response, :hstore, default: {}, null: false

  end
end
