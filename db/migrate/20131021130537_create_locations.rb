class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :zipcode
      t.string :location
      t.string :country

      t.timestamps
    end
  end
end
