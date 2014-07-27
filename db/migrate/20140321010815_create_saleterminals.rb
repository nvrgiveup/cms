class CreateSaleterminals < ActiveRecord::Migration
  def change
    create_table :saleterminals do |t|
      t.string :stock_number
      t.integer :manufacturer_id
      t.string :model
      t.string :year
      t.string :color
      t.integer :terminaltype_id
      t.date :purchase_date
      t.float :invoice_price
      t.float :sale_price
      t.text :features_note

      t.timestamps
    end
  end
end
