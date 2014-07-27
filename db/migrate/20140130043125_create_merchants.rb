class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :merch_fname
      t.string :merch_lname
      t.string :merch_dba
      t.string :merch_email
      t.string :merch_phone
      t.string :merch_cell
      t.string :merch_fax
      t.string :merch_address1
      t.string :merch_address2
      t.string :merch_city
      t.string :merch_state
      t.string :merch_zip
      t.text :merch_notes
      t.integer :merchant_id

      t.timestamps
    end
  end
end
