class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :training_activity_id
      t.integer :failed
      t.integer :asserted
      t.datetime :startted_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
