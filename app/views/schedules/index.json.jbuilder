json.array!(@schedules) do |schedule|
  json.extract! schedule, :begin, :end, :location_id
  json.url schedule_url(schedule, format: :json)
end
