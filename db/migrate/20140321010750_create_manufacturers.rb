class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer_name
      t.string :manu_website
      t.string :contact_name
      t.string :contact_phone

      t.timestamps
    end
  end
end
