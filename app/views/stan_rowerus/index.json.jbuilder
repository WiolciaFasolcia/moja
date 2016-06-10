json.array!(@stan_rowerus) do |stan_roweru|
  json.extract! stan_roweru, :id, :nazwa
  json.url stan_roweru_url(stan_roweru, format: :json)
end
