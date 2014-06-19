json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :passout_year
  json.url user_url(user, format: :json)
end
