class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :begin
      t.datetime :end
      t.integer :location_id

      t.timestamps
    end
  end
end
