class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :promo_title
      t.text :promo_description
      t.binary :promo_imagepath
      t.date :promo_startdate
      t.date :promo_enddate

      t.timestamps
    end
  end
end
