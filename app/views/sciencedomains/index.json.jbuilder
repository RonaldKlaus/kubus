json.array!(@sciencedomains) do |sciencedomain|
  json.extract! sciencedomain, 
  json.url sciencedomain_url(sciencedomain, format: :json)
end
