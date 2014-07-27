json.array!(@leases) do |lease|
  json.extract! lease, :id, :saleterminal_id, :merchant_id, :salesrep_id, :lease_price, :lease_date, :lease_term_months
  json.url lease_url(lease, format: :json)
end
