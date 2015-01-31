json.array!(@days) do |day|
  json.extract! day, :id, :title, :description
  json.url day_url(day, format: :json)
end
