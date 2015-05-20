json.array!(@getaways) do |getaway|
  json.extract! getaway, :id
  json.url getaway_url(getaway, format: :json)
end
