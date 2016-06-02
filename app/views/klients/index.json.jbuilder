json.array!(@klients) do |klient|
  json.extract! klient, :id, :name, :surname, :pesel, :nr_dowodu
  json.url klient_url(klient, format: :json)
end
