class CreateTips < ActiveRecord::Migration[5.0]
  def change
    create_table :tips do |t|
      t.integer :training_plan_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
