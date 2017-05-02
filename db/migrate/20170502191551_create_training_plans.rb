class CreateTrainingPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :training_plans do |t|
      t.string :name
      t.string :shoot_type

      t.timestamps
    end
  end
end
