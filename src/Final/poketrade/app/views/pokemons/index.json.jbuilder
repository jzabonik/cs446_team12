json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :name, :type_one, :type_two, :image_url, :pokedex
  json.url pokemon_url(pokemon, format: :json)
end
