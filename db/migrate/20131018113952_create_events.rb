class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :course_id
      t.integer :price
      t.integer :min_number_of_participants
      t.string :max_number_of_participants
      t.integer :language_id
      t.string :url
      t.integer :attribute_id
      t.date :activate_at
      t.text :schedule
      t.text :comment

      t.timestamps
    end
  end
end
