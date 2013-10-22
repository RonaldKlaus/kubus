json.array!(@locations) do |location|
  json.extract! location, :street, :zipcode, :location, :country
  json.url location_url(location, format: :json)
end
