json.array!(@attributes) do |attribute|
  json.extract! attribute, 
  json.url attribute_url(attribute, format: :json)
end
