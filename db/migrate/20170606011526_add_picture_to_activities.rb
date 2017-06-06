class AddPictureToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :training_activities, :picture, :string 
    add_column :training_plans, :picture, :string 
    add_column :users, :picture, :string 
  end
end
