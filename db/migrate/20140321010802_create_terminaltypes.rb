class CreateTerminaltypes < ActiveRecord::Migration
  def change
    create_table :terminaltypes do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
