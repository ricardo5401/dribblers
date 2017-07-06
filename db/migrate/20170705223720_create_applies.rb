class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.integer :user_id
      t.string :model
      t.integer :model_id
      t.bool :active

      t.timestamps
    end
  end
end
