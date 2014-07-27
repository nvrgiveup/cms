json.array!(@terminaltypes) do |terminaltype|
  json.extract! terminaltype, :id, :type_name
  json.url terminaltype_url(terminaltype, format: :json)
end
