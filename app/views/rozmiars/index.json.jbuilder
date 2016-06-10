json.array!(@rozmiars) do |rozmiar|
  json.extract! rozmiar, :id, :rozmiar
  json.url rozmiar_url(rozmiar, format: :json)
end
