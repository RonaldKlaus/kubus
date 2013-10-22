json.array!(@attribute_languages) do |attribute_language|
  json.extract! attribute_language, :name, :description, :language_id
  json.url attribute_language_url(attribute_language, format: :json)
end
