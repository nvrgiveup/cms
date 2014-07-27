class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :saleterminal_id
      t.integer :merchant_id
      t.integer :salesrep_id
      t.float :lease_price
      t.date :lease_date
      t.integer :lease_term_months

      t.timestamps
    end
  end
end
