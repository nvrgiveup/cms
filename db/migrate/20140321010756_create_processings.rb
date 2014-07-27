class CreateProcessings < ActiveRecord::Migration
  def change
    create_table :processings do |t|
      t.decimal :discountrate
      t.decimal :transfee
      t.decimal :batchfee
      t.float :annualfee
      t.float :statementfee

      t.timestamps
    end
  end
end
