class RenameShootTypeToDescription < ActiveRecord::Migration[5.0]
  def change
    rename_column :training_plans, :shoot_type, :description
    add_column :training_activities, :name, :string
  end
end
