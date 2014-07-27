json.array!(@processings) do |processing|
  json.extract! processing, :id, :discountrate, :transfee, :batchfee, :annualfee, :statementfee
  json.url processing_url(processing, format: :json)
end
