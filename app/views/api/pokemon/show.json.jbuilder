json.id = @pokemon.id
json.name = @pokemon.name
json.attack = @pokemon.attack
json.defense = @pokemon.defense
json.image_url = @pokemon.image_url
json.moves = @pokemon.moves
json.poke_type = @pokemon.poke_type
json.items do
  json.array! @pokemon.items.each do |item|
    json.id = item.id
    json.name = item.name
    json.pokemon_id = @pokemon.id
    json.price = item.price
    json.happiness = item.happiness
    json.image_url = item.image_url
  end
end
