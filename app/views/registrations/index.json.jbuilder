json.array!(@registrations) do |registration|
  json.extract! registration, :user_id, :event_id, :state_id, :comment_manager, :comment_user
  json.url registration_url(registration, format: :json)
end
