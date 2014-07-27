class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :saleterminal_id
      t.integer :merchant_id
      t.integer :salesrep_id
      t.float :sale_price
      t.date :sale_date
      t.float :downpayment
      t.float :finance_amount
      t.float :finance_rate

      t.timestamps
    end
  end
end
