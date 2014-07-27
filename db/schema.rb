# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140324011141) do

  create_table "currents", force: true do |t|
    t.string   "merchant_id"
    t.boolean  "current_processing"
    t.float    "current_discount"
    t.float    "current_transfee"
    t.boolean  "current_terminal_lease"
    t.string   "current_term_model"
    t.text     "current_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leases", force: true do |t|
    t.integer  "saleterminal_id"
    t.integer  "merchant_id"
    t.integer  "salesrep_id"
    t.float    "lease_price"
    t.date     "lease_date"
    t.integer  "lease_term_months"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenances", force: true do |t|
    t.integer  "saleterminal_id"
    t.date     "service_date"
    t.text     "maint_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", force: true do |t|
    t.string   "manufacturer_name"
    t.string   "manu_website"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", force: true do |t|
    t.string   "merch_fname"
    t.string   "merch_lname"
    t.string   "merch_dba"
    t.string   "merch_email"
    t.string   "merch_phone"
    t.string   "merch_cell"
    t.string   "merch_fax"
    t.string   "merch_address1"
    t.string   "merch_address2"
    t.string   "merch_city"
    t.string   "merch_state"
    t.string   "merch_zip"
    t.text     "merch_notes"
    t.integer  "merchant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processings", force: true do |t|
    t.decimal  "discountrate"
    t.decimal  "transfee"
    t.decimal  "batchfee"
    t.float    "annualfee"
    t.float    "statementfee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", force: true do |t|
    t.string   "promo_title"
    t.text     "promo_description"
    t.binary   "promo_imagepath"
    t.date     "promo_startdate"
    t.date     "promo_enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "saleterminal_id"
    t.integer  "merchant_id"
    t.integer  "salesrep_id"
    t.float    "sale_price"
    t.date     "sale_date"
    t.float    "downpayment"
    t.float    "finance_amount"
    t.float    "finance_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesreps", force: true do |t|
    t.string   "rep_fname"
    t.string   "rep_lname"
    t.string   "rep_email"
    t.string   "rep_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "saleterminals", force: true do |t|
    t.string   "stock_number"
    t.integer  "manufacturer_id"
    t.string   "model"
    t.string   "year"
    t.string   "color"
    t.integer  "terminaltype_id"
    t.date     "purchase_date"
    t.float    "invoice_price"
    t.float    "sale_price"
    t.text     "features_note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminaltypes", force: true do |t|
    t.string   "type_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
