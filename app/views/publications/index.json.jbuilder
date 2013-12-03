json.array!(@publications) do |publication|
  json.extract! publication, :name
  json.url publication_url(publication, format: :json)
end
