class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :subscription_id
      t.float :price

      t.timestamps
    end
  end
end
