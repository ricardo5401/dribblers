class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :account_type_id
      t.integer :payment_id
      t.datetime :expired_at

      t.timestamps
    end
  end
end
