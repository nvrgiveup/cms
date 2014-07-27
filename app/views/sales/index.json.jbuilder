json.array!(@sales) do |sale|
  json.extract! sale, :id, :saleterminal_id, :merchant_id, :salesrep_id, :sale_price, :sale_date, :downpayment, :finance_amount, :finance_rate
  json.url sale_url(sale, format: :json)
end
