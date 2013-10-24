class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :state_id
      t.text :comment_manager
      t.text :comment_user

      t.timestamps
    end
  end
end
