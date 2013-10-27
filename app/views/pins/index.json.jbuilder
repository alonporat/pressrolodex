json.array!(@pins) do |pin|
  json.extract! pin, :Reporter
  json.url pin_url(pin, format: :json)
end
