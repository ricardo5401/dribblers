class CreateTrainingActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :training_activities do |t|
      t.integer :training_plan_id
      t.integer :shoot_count
      t.boolean :with_time
      t.datetime :expected_time

      t.timestamps
    end
  end
end
