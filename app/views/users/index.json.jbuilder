json.array!(@users) do |user|
  json.extract! user, :title, :last_name, :first_name, :email, :gender, :street, :birth_date, :location, :zipcode, :country
  json.url user_url(user, format: :json)
end
