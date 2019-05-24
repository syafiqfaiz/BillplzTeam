class CreateBillplzBills < ActiveRecord::Migration[5.2]
  def change
    create_table :billplz_bills do |t|
      t.bigint :payable_id
      t.string :payable_type
      t.datetime :paid_at
      t.integer :amount
      t.string :payment_method
      t.string :payment_url
      t.string :payment_status
      t.string :bill_id
      t.bigint :collection_id
      t.string :name
      t.string :email,        null: false
      t.string :mobile,       null: false
      t.integer :paid_amount, null: false

      t.timestamps
    end
    add_index :billplz_bills, :bill_id
  end
end
