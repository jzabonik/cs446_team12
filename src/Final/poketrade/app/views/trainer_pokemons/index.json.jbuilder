json.array!(@trainer_pokemons) do |trainer_pokemon|
  json.extract! trainer_pokemon, :id, :pokemon_id, :trainer_id
  json.url trainer_pokemon_url(trainer_pokemon, format: :json)
end
