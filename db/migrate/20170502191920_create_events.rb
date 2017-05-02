class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :description
      t.datetime :event_date
      t.boolean :private

      t.timestamps
    end
  end
end
