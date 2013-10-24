json.array!(@events) do |event|
  json.extract! event, :course_id, :price, :min_number_of_participants, :max_number_of_participants, :language, :url, :attribute, :activate_at, :schedule, :comment
  json.url event_url(event, format: :json)
end
