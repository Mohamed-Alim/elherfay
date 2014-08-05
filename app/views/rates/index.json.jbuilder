json.array!(@rates) do |rate|
  json.extract! rate, :id, :quality, :price, :cleanliness, :punctuality, :dealing, :average, :worker_id, :review
  json.url rate_url(rate, format: :json)
end
