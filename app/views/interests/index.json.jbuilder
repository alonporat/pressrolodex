json.array!(@interests) do |interest|
  json.extract! interest, :name
  json.url interest_url(interest, format: :json)
end
