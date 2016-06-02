json.array!(@wypozyczenia) do |wypozyczenium|
  json.extract! wypozyczenium, :id, :date_begin, :date_end, :status
  json.url wypozyczenium_url(wypozyczenium, format: :json)
end
