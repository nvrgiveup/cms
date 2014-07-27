json.array!(@maintenances) do |maintenance|
  json.extract! maintenance, :id, :saleterminal_id, :service_date, :maint_notes
  json.url maintenance_url(maintenance, format: :json)
end
