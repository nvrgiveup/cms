class CreateCurrents < ActiveRecord::Migration
  def change
    create_table :currents do |t|
      t.string :merchant_id
      t.boolean :current_processing
      t.float :current_discount
      t.float :current_transfee
      t.boolean :current_terminal_lease
      t.string :current_term_model
      t.text :current_notes

      t.timestamps
    end
  end
end
