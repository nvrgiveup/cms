json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :manufacturer_name, :manu_website, :contact_name, :contact_phone
  json.url manufacturer_url(manufacturer, format: :json)
end
