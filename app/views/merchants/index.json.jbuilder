json.array!(@merchants) do |merchant|
  json.extract! merchant, :id, :merch_fname, :merch_lname, :merch_dba, :merch_email, :merch_phone, :merch_cell, :merch_fax, :merch_address1, :merch_address2, :merch_city, :merch_state, :merch_zip, :merch_notes, :merchant_id
  json.url merchant_url(merchant, format: :json)
end
