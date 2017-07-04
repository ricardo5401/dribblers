class AddIsPublicToEvents < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :private, :is_public
  end
end
