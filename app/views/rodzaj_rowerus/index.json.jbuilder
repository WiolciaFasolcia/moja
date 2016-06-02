json.array!(@rodzaj_rowerus) do |rodzaj_roweru|
  json.extract! rodzaj_roweru, :id, :rodzaj
  json.url rodzaj_roweru_url(rodzaj_roweru, format: :json)
end
