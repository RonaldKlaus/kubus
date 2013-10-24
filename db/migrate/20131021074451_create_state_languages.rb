class CreateStateLanguages < ActiveRecord::Migration
  def change
    create_table :state_languages do |t|
      t.integer :state_id
      t.string :name
      t.string :description
      t.integer :language_id

      t.timestamps
    end
  end
end
