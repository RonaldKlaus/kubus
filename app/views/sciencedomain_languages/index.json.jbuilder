json.array!(@sciencedomain_languages) do |sciencedomain_language|
  json.extract! sciencedomain_language, :state_id, :name, :description, :language_id
  json.url sciencedomain_language_url(sciencedomain_language, format: :json)
end
