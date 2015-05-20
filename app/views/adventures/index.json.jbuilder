json.array!(@adventures) do |adventure|
  json.extract! adventure, :id
  json.url adventure_url(adventure, format: :json)
end
