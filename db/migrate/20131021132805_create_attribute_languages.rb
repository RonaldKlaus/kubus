class CreateAttributeLanguages < ActiveRecord::Migration
  def change
    create_table :attribute_languages do |t|
      t.string :name
      t.string :description
      t.integer :language_id

      t.timestamps
    end
  end
end
