json.array!(@widoks) do |widok|
  json.extract! widok, :id
  json.url widok_url(widok, format: :json)
end
