json.array!(@salesreps) do |salesrep|
  json.extract! salesrep, :id, :rep_fname, :rep_lname, :rep_email, :rep_phone
  json.url salesrep_url(salesrep, format: :json)
end
