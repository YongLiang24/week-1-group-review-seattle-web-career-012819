require "pry"

## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

#binding.pry

# How would you get the url for Bulbasaur's ability?
bulby = pokemon.find {|poke| poke[:name] == "bulbasaur"}
bulby[:abilities].map do |element|
  puts element[:ability][:url]
end

# How would you return the first pokemon with base experience over 40?
puts pokemon.find {|poke| poke[:base_experience] > 40}

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
puts pokemon.select {|poke| poke[:base_experience] > 40}

# How would you return an array of all of the pokemon's names?
puts pokemon.collect {|poke| poke[:name]}

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
def test (pokemon)
  pokemon.each do |poke|
    if poke[:weight] > 60
      return true
    end
  end
end

puts test(pokemon)
