class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.integer :saleterminal_id
      t.date :service_date
      t.text :maint_notes

      t.timestamps
    end
  end
end
