class CreateSciencedomains < ActiveRecord::Migration
  def change
    create_table :sciencedomains do |t|

      t.timestamps
    end
  end
end
