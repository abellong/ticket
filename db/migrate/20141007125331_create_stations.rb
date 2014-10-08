class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
