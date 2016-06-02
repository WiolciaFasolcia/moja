json.array!(@rowers) do |rower|
  json.extract! rower, :id, :rodzaj, :wielkosc_ramy, :stan
  json.url rower_url(rower, format: :json)
end
