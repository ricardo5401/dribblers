class AddDescriptionToTrainingActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :training_activities, :description, :string 
  end
end
