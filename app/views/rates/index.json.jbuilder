json.array!(@rates) do |rate|
  json.extract! rate, :id, :cleanliness, :quality, :price, :punctulity, :average, :dealing
  json.url rate_url(rate, format: :json)
end
