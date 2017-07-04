class AddIsPublicToEvents < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :private, :is_public
    rename_column :activities, :startted_at, :started_at
  end
end
