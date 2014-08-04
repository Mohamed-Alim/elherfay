json.array!(@workers) do |worker|
  json.extract! worker, :id, :name, :telephone, :availability, :totalavg, :avcomment
  json.url worker_url(worker, format: :json)
end
