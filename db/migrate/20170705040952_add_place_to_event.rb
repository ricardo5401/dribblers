class AddPlaceToEvent < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :description, :name
    add_column    :events, :place, :string
  end
end
