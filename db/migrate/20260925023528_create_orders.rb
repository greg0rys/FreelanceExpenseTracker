class CreateOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :stripe_payment_intent_id
      t.datetime :paid_at

      t.timestamps
    end
  end
end
