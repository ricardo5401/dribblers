class CreateAccountTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :account_types do |t|
      t.string :name
      t.string :description
      t.string :susbcription_price_anually_payment
      t.string :subscription_price_monthly_payment

      t.timestamps
    end
  end
end
