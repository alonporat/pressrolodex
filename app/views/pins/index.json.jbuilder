json.array!(@pins) do |pin|
  json.extract! pin, :name :id, :repemail, :publication, :blog, :linkedin, :twitter, :facebook
  json.url pin_url(pin, format: :json)
end
