json.array!(@currents) do |current|
  json.extract! current, :id, :merchant_id, :current_processing, :current_discount, :current_transfee, :current_terminal_lease, :current_term_model, :current_notes
  json.url current_url(current, format: :json)
end
