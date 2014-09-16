json.array!(@interfaces) do |interface|
  json.extract! interface, :id, :address, :name
  json.url interface_url(interface, format: :json)
end
