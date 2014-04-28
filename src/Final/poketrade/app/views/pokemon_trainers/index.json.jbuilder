json.array!(@pokemon_trainers) do |pokemon_trainer|
  json.extract! pokemon_trainer, :id
  json.url pokemon_trainer_url(pokemon_trainer, format: :json)
end
