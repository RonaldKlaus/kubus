class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.string :last_name
      t.string :first_name
      t.string :email
      t.boolean :gender
      t.string :street
      t.datetime :birth_date
      t.string :location
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
