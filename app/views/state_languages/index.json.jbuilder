json.array!(@state_languages) do |state_language|
  json.extract! state_language, :state_id, :name, :description, :language_id
  json.url state_language_url(state_language, format: :json)
end
