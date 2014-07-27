json.array!(@saleterminals) do |saleterminal|
  json.extract! saleterminal, :id, :stock_number, :manufacturer_id, :model, :year, :color, :terminaltype_id, :purchase_date, :invoice_price, :sale_price, :features_note
  json.url saleterminal_url(saleterminal, format: :json)
end
