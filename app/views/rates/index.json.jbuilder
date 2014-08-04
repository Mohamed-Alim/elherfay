json.array!(@rates) do |rate|
  json.extract! rate, :id, :cleanliness, :quality, :price, :punctulity, :dealing, :average, :comment
  json.url rate_url(rate, format: :json)
end
