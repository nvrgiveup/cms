class CreateSalesreps < ActiveRecord::Migration
  def change
    create_table :salesreps do |t|
      t.string :rep_fname
      t.string :rep_lname
      t.string :rep_email
      t.string :rep_phone

      t.timestamps
    end
  end
end
