# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pokemon.delete_all
# . . .
Pokemon.create!(name: 'Bulbasaur',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Bulbasaur.png',
  pokedex: 1)
# . . .
Pokemon.create!(name: 'Ivysaur',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Ivysaur.png',
  pokedex: 2)
# . . .
Pokemon.create!(name: 'Venusaur',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Venusaur.png',
  pokedex: 3)
# . . .
Pokemon.create!(name: 'Charmander',
  type_one: 'Fire',
  image_url: 'Charmander.png',
  pokedex: 4)
# . . .
Pokemon.create!(name: 'Charmeleon',
  type_one: 'Fire',
  image_url: 'Charmeleon.png',
  pokedex: 5)
# . . .
Pokemon.create!(name: 'Charizard',
  type_one: 'Fire',
  type_two: 'Flying',
  image_url: 'Charizard.png',
  pokedex: 6)
# . . .
Pokemon.create!(name: 'Squirtle',
  type_one: 'Water',
  image_url: 'Squirtle.png',
  pokedex: 7)
# . . .
Pokemon.create!(name: 'Wartortle',
  type_one: 'Water',
  image_url: 'Wartortle.png',
  pokedex: 8)
# . . .
Pokemon.create!(name: 'Blastoise',
  type_one: 'Water',
  image_url: 'Blastoise.png',
  pokedex: 9)
# . . .
Pokemon.create!(name: 'Caterpie',
  type_one: 'Bug',
  image_url: 'Caterpie.png',
  pokedex: 10)
# . . .
Pokemon.create!(name: 'Metapod',
  type_one: 'Bug',
  image_url: 'Metapod.png',
  pokedex: 11)
# . . .
Pokemon.create!(name: 'Butterfree',
  type_one: 'Bug',
  type_two: 'Flying',
  image_url: 'Butterfree.png',
  pokedex: 12)
# . . .
Pokemon.create!(name: 'Weedle',
  type_one: 'Bug',
  type_two: 'Poison',
  image_url: 'Weedle.png',
  pokedex: 13)
# . . .
Pokemon.create!(name: 'Kakuna',
  type_one: 'Bug',
  type_two: 'Poison',
  image_url: 'Kakuna.png',
  pokedex: 14)
# . . .
Pokemon.create!(name: 'Beedrill',
  type_one: 'Bug',
  type_two: 'Poison',
  image_url: 'Beedrill.png',
  pokedex: 15)
# . . .
Pokemon.create!(name: 'Pidgey',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Pidgey.png',
  pokedex: 16)
# . . .
Pokemon.create!(name: 'Pidgeotto',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Pidgeotto',
  pokedex: 17)
# . . .
Pokemon.create!(name: 'Pidgeot',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Pidgeot.png',
  pokedex: 18)
# . . .
Pokemon.create!(name: 'Rattata',
  type_one: 'Normal',
  image_url: 'Rattata.png',
  pokedex: 19)
# . . .
Pokemon.create!(name: 'Raticate',
  type_one: 'Normal',
  image_url: 'Raticate.png',
  pokedex: 20)
# . . .
Pokemon.create!(name: 'Spearow',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Spearow.png',
  pokedex: 21)
# . . .
Pokemon.create!(name: 'Fearow',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Fearow.png',
  pokedex: 22)
# . . .
Pokemon.create!(name: 'Ekans',
  type_one: 'Poison',
  image_url: 'Ekans.png',
  pokedex: 23)
# . . .
Pokemon.create!(name: 'Arbok',
  type_one: 'Poison',
  image_url: 'Arbok.png',
  pokedex: 24)
# . . .
Pokemon.create!(name: 'Pikachu',
  type_one: 'Electric',
  image_url: 'Pikachu.png',
  pokedex: 25)
# . . .
Pokemon.create!(name: 'Raichu',
  type_one: 'Electric',
  image_url: 'Raichu.png',
  pokedex: 26)
# . . .
Pokemon.create!(name: 'Sandshrew',
  type_one: 'Ground',
  image_url: 'Sandshrew.png',
  pokedex: 27)
# . . .
Pokemon.create!(name: 'Sandslash',
  type_one: 'Ground',
  image_url: 'Sandslash.png',
  pokedex: 28)
# . . .
Pokemon.create!(name: 'Nidoran',
  type_one: 'Poison',
  image_url: 'Nidoran_female.png',
  pokedex: 29)
# . . .
Pokemon.create!(name: 'Nidorina',
  type_one: 'Poison',
  image_url: 'Nidorina.png',
  pokedex: 30)
# . . .
Pokemon.create!(name: 'Nidoqueen',
  type_one: 'Poison',
  type_two: 'Ground',
  image_url: 'Nidoqueen.png',
  pokedex: 31)
# . . .
Pokemon.create!(name: 'Nidoran',
  type_one: 'Poison',
  image_url: 'Nidoran.png',
  pokedex: 32)
# . . .
Pokemon.create!(name: 'Nidorino',
  type_one: 'Poison',
  image_url: 'Nidorino.png',
  pokedex: 33)
# . . .
Pokemon.create!(name: 'Nidoking',
  type_one: 'Poison',
  type_two: 'Ground',
  image_url: 'Nidoking.png',
  pokedex: 34)
# . . .
Pokemon.create!(name: 'Clefairy',
  type_one: 'Normal',
  image_url: 'Clefairy.png',
  pokedex: 35)
# . . .
Pokemon.create!(name: 'Clefable',
  type_one: 'Normal',
  image_url: 'Clefable.png',
  pokedex: 36)
# . . .
Pokemon.create!(name: 'Vulpix',
  type_one: 'Fire',
  image_url: 'Vulpix.png',
  pokedex: 37)
# . . .
Pokemon.create!(name: 'Ninetales',
  type_one: 'Fire',
  image_url: 'Ninetales.png',
  pokedex: 38)
# . . .
Pokemon.create!(name: 'Jigglypuff',
  type_one: 'Normal',
  image_url: 'Jigglypuff.png',
  pokedex: 39)
# . . .
Pokemon.create!(name: 'Wigglytuff',
  type_one: 'Normal',
  image_url: 'Wigglytuff.png',
  pokedex: 40)
# . . .
Pokemon.create!(name: 'Zubat',
  type_one: 'Poison',
  type_two: 'Flying',
  image_url: 'Zubat.png',
  pokedex: 41)
# . . .
Pokemon.create!(name: 'Golbat',
  type_one: 'Poison',
  type_two: 'Flying',
  image_url: 'Golbat.png',
  pokedex: 42)
# . . .
Pokemon.create!(name: 'Oddish',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Oddish.png',
  pokedex: 43)
# . . .
Pokemon.create!(name: 'Gloom',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Gloom.png',
  pokedex: 44)
# . . .
Pokemon.create!(name: 'Vileplume',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Vileplume.png',
  pokedex: 45)
# . . .
Pokemon.create!(name: 'Paras',
  type_one: 'Bug',
  type_two: 'Grass',
  image_url: 'Paras.png',
  pokedex: 46)
# . . .
Pokemon.create!(name: 'Parasect',
  type_one: 'Bug',
  type_two: 'Grass',
  image_url: 'Parasect.png',
  pokedex: 47)
# . . .
Pokemon.create!(name: 'Venonat',
  type_one: 'Bug',
  type_two: 'Poison',
  image_url: 'Venonat.png',
  pokedex: 48)
# . . .
Pokemon.create!(name: 'Venomoth',
  type_one: 'Bug',
  type_two: 'Poison',
  image_url: 'Venomoth.png',
  pokedex: 49)
# . . .
Pokemon.create!(name: 'Diglett',
  type_one: 'Ground',
  image_url: 'Diglett.png',
  pokedex: 50)
# . . .
Pokemon.create!(name: 'Dugtrio',
  type_one: 'Ground',
  image_url: 'Dugtrio.png',
  pokedex: 51)
# . . .
Pokemon.create!(name: 'Meowth',
  type_one: 'Normal',
  image_url: 'Meowth.png',
  pokedex: 52)
# . . .
Pokemon.create!(name: 'Persian',
  type_one: 'Normal',
  image_url: 'Persian.png',
  pokedex: 53)
# . . .
Pokemon.create!(name: 'Psyduck',
  type_one: 'Water',
  image_url: 'Psyduck.png',
  pokedex: 54)
# . . .
Pokemon.create!(name: 'Golduck',
  type_one: 'Water',
  image_url: 'Golduck.png',
  pokedex: 55)
# . . .
Pokemon.create!(name: 'Mankey',
  type_one: 'Fighting',
  image_url: 'Mankey.png',
  pokedex: 56)
# . . .
Pokemon.create!(name: 'Primeape',
  type_one: 'Fighting',
  image_url: 'Primeape.png',
  pokedex: 57)
# . . .
Pokemon.create!(name: 'Growlithe',
  type_one: 'Fire',
  image_url: 'Growlithe.png',
  pokedex: 58)
# . . .
Pokemon.create!(name: 'Arcanine',
  type_one: 'Fire',
  image_url: 'Arcanine.png',
  pokedex: 59)
# . . .
Pokemon.create!(name: 'Poliwag',
  type_one: 'Water',
  image_url: 'Poliwag.png',
  pokedex: 60)
# . . .
Pokemon.create!(name: 'Poliwhirl',
  type_one: 'Water',
  image_url: 'Poliwhirl.png',
  pokedex: 61)
# . . .
Pokemon.create!(name: 'Poliwrath',
  type_one: 'Water',
  type_two: 'Fighting',
  image_url: 'Poliwrath.png',
  pokedex: 62)
# . . .
Pokemon.create!(name: 'Abra',
  type_one: 'Psychic',
  image_url: 'Abra.png',
  pokedex: 63)
# . . .
Pokemon.create!(name: 'Kadabra',
  type_one: 'Psychic',
  image_url: 'Kadabra.png',
  pokedex: 64)
# . . .
Pokemon.create!(name: 'Alakazam',
  type_one: 'Psychic',
  image_url: 'Alakazam.png',
  pokedex: 65)
# . . .
Pokemon.create!(name: 'Machop',
  type_one: 'Fighting',
  image_url: 'Machop.png',
  pokedex: 66)
# . . .
Pokemon.create!(name: 'Machoke',
  type_one: 'Fighting',
  image_url: 'Machoke.png',
  pokedex: 67)
# . . .
Pokemon.create!(name: 'Machamp',
  type_one: 'Fighting',
  image_url: 'Machamp.png',
  pokedex: 68)
# . . .
Pokemon.create!(name: 'Bellsprout',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Bellsprout.png',
  pokedex: 69)
# . . .
Pokemon.create!(name: 'Weepinbell',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Weepinbell.png',
  pokedex: 70)
# . . .
Pokemon.create!(name: 'Victreebel',
  type_one: 'Grass',
  type_two: 'Poison',
  image_url: 'Victreebel.png',
  pokedex: 71)
# . . .
Pokemon.create!(name: 'Tentacool',
  type_one: 'Water',
  type_two: 'Poison',
  image_url: 'Tentacool.png',
  pokedex: 72)
# . . .
Pokemon.create!(name: 'Tentacruel',
  type_one: 'Water',
  type_two: 'Poison',
  image_url: 'Tentacruel.png',
  pokedex: 73)
# . . .
Pokemon.create!(name: 'Geodude',
  type_one: 'Rock',
  type_two: 'Ground',
  image_url: 'Geodude.png',
  pokedex: 74)
# . . .
Pokemon.create!(name: 'Graveler',
  type_one: 'Rock',
  type_two: 'Ground',
  image_url: 'Graveler.png',
  pokedex: 75)
# . . .
Pokemon.create!(name: 'Golem',
  type_one: 'Rock',
  type_two: 'Ground',
  image_url: 'Golem.png',
  pokedex: 76)
# . . .
Pokemon.create!(name: 'Ponyta',
  type_one: 'Fire',
  image_url: 'Ponyta.png',
  pokedex: 77)
# . . .
Pokemon.create!(name: 'Rapidash',
  type_one: 'Fire',
  image_url: 'Rapidash.png',
  pokedex: 78)
# . . .
Pokemon.create!(name: 'Slowpoke',
  type_one: 'Water',
  type_two: 'Psychic',
  image_url: 'Slowpoke.png',
  pokedex: 79)
# . . .
Pokemon.create!(name: 'Slowbro',
  type_one: 'Water',
  type_two: 'Psychic',
  image_url: 'Slowbro.png',
  pokedex: 80)
# . . .
Pokemon.create!(name: 'Magnemite',
  type_one: 'Electric',
  type_two: 'Steel',
  image_url: 'Magnemite.png',
  pokedex: 81)
# . . .
Pokemon.create!(name: 'Magneton',
  type_one: 'Electric',
  type_two: 'Steel',
  image_url: 'Magneton.png',
  pokedex: 82)
# . . .
Pokemon.create!(name: 'Farfetch\'d',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Farfetch\'d.png',
  pokedex: 83)
# . . .
Pokemon.create!(name: 'Doduo',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Doduo.png',
  pokedex: 84)
# . . .
Pokemon.create!(name: 'Dodrio',
  type_one: 'Normal',
  type_two: 'Flying',
  image_url: 'Dodrio.png',
  pokedex: 85)
# . . .
Pokemon.create!(name: 'Seel',
  type_one: 'Water',
  image_url: 'Seel.png',
  pokedex: 86)
# . . .
Pokemon.create!(name: 'Dewgong',
  type_one: 'Water',
  type_two: 'Ice',
  image_url: 'Dewgong.png',
  pokedex: 87)
# . . .
Pokemon.create!(name: 'Grimer',
  type_one: 'Poison',
  image_url: 'Grimer.png',
  pokedex: 88)
# . . .
Pokemon.create!(name: 'Muk',
  type_one: 'Poison',
  image_url: 'Muk.png',
  pokedex: 89)
# . . .
Pokemon.create!(name: 'Shellder',
  type_one: 'Water',
  image_url: 'Shellder.png',
  pokedex: 90)
# . . .
Pokemon.create!(name: 'Cloyster',
  type_one: 'Water',
  type_two: 'Ice',
  image_url: 'Cloyster.png',
  pokedex: 91)
# . . .
Pokemon.create!(name: 'Gastly',
  type_one: 'Ghost',
  type_two: 'Poison',
  image_url: 'Gastly.png',
  pokedex: 92)
# . . .
Pokemon.create!(name: 'Haunter',
  type_one: 'Ghost',
  type_two: 'Poison',
  image_url: 'Haunter.png',
  pokedex: 93)
# . . .
Pokemon.create!(name: 'Gengar',
  type_one: 'Ghost',
  type_two: 'Poison',
  image_url: 'Gengar.png',
  pokedex: 94)
# . . .
Pokemon.create!(name: 'Onix',
  type_one: 'Rock',
  type_two: 'Ground',
  image_url: 'Onix.png',
  pokedex: 95)
# . . .
Pokemon.create!(name: 'Drowzee',
  type_one: 'Psychic',
  image_url: 'Drowzee.png',
  pokedex: 96)
# . . .
Pokemon.create!(name: 'Hypno',
  type_one: 'Psychic',
  image_url: 'Hypno.png',
  pokedex: 97)
# . . .
Pokemon.create!(name: 'Krabby',
  type_one: 'Water',
  image_url: 'Krabby.png',
  pokedex: 98)
# . . .
Pokemon.create!(name: 'Kingler',
  type_one: 'Water',
  image_url: 'Kingler.png',
  pokedex: 99)
# . . .
Pokemon.create!(name: 'Voltorb',
  type_one: 'Electric',
  image_url: 'Voltorb.png',
  pokedex: 100)
# . . .
Pokemon.create!(name: 'Electrode',
  type_one: 'Electric',
  image_url: 'Electrode.png',
  pokedex: 101)
# . . .
Pokemon.create!(name: 'Exeggcute',
  type_one: 'Grass',
  type_two: 'Psychic',
  image_url: 'Exeggcute.png',
  pokedex: 102)
# . . .
Pokemon.create!(name: 'Exeggutor',
  type_one: 'Grass',
  type_two: 'Psychic',
  image_url: 'Exeggutor.png',
  pokedex: 103)
# . . .
Pokemon.create!(name: 'Cubone',
  type_one: 'Ground',
  image_url: 'Cubone.png',
  pokedex: 104)
# . . .
Pokemon.create!(name: 'Marowak',
  type_one: 'Ground',
  image_url: 'Marowak.png',
  pokedex: 105)
# . . .
Pokemon.create!(name: 'Hitmonlee',
  type_one: 'Fighting',
  image_url: 'Hitmonlee',
  pokedex: 106)
# . . .
Pokemon.create!(name: 'Hitmonchan',
  type_one: 'Fighting',
  image_url: 'Hitmonchan',
  pokedex: 107)
# . . .
Pokemon.create!(name: 'Lickitung',
  type_one: 'Normal',
  image_url: 'Lickitung.png',
  pokedex: 108)
# . . .
Pokemon.create!(name: 'Koffing',
  type_one: 'Poison',
  image_url: 'Koffing.png',
  pokedex: 109)
# . . .
Pokemon.create!(name: 'Weezing',
  type_one: 'Poison',
  image_url: 'Weezing.png',
  pokedex: 110)
# . . .
Pokemon.create!(name: 'Rhyhorn',
  type_one: 'Ground',
  type_two: 'Rock',
  image_url: 'Rhyhorn.png',
  pokedex: 111)
# . . .
Pokemon.create!(name: 'Rhydon',
  type_one: 'Ground',
  type_two: 'Rock',
  image_url: 'Rhydon.png',
  pokedex: 112)
# . . .
Pokemon.create!(name: 'Chansey',
  type_one: 'Normal',
  image_url: 'Chansey.png',
  pokedex: 113)
# . . .
Pokemon.create!(name: 'Tangela',
  type_one: 'Grass',
  image_url: 'Tangela.png',
  pokedex: 114)
# . . .
Pokemon.create!(name: 'Kangaskhan',
  type_one: 'Normal',
  image_url: 'Kangaskhan.png',
  pokedex: 115)
# . . .
Pokemon.create!(name: 'Horsea',
  type_one: 'Water',
  image_url: 'Horsea.png',
  pokedex: 116)
# . . .
Pokemon.create!(name: 'Seadra',
  type_one: 'Water',
  image_url: 'Seadra.png',
  pokedex: 117)
# . . .
Pokemon.create!(name: 'Goldeen',
  type_one: 'Water',
  image_url: 'Goldeen.png',
  pokedex: 118)
# . . .
Pokemon.create!(name: 'Seaking',
  type_one: 'Water',
  image_url: 'Seaking.png',
  pokedex: 119)
# . . .
Pokemon.create!(name: 'Staryu',
  type_one: 'Water',
  image_url: 'Staryu.png',
  pokedex: 120)
# . . .
Pokemon.create!(name: 'Starmie',
  type_one: 'Water',
  type_two: 'Psychic',
  image_url: 'Starmie.png',
  pokedex: 121)
# . . .
Pokemon.create!(name: 'Mr. Mime',
  type_one: 'Psychic',
  image_url: 'Mr._Mime.png',
  pokedex: 122)
# . . .
Pokemon.create!(name: 'Scyther',
  type_one: 'Bug',
  type_two: 'Flying',
  image_url: 'Scyther.png',
  pokedex: 123)
# . . .
Pokemon.create!(name: 'Jynx',
  type_one: 'Ice',
  type_two: 'Psychic',
  image_url: 'Jynx.png',
  pokedex: 124)
# . . .
Pokemon.create!(name: 'Electabuzz',
  type_one: 'Electric',
  image_url: 'Electabuzz.png',
  pokedex: 125)
# . . .
Pokemon.create!(name: 'Magmar',
  type_one: 'Fire',
  image_url: 'Magmar.png',
  pokedex: 126)
# . . .
Pokemon.create!(name: 'Pinsir',
  type_one: 'Bug',
  image_url: 'Pinsir.png',
  pokedex: 127)
# . . .
Pokemon.create!(name: 'Tauros',
  type_one: 'Normal',
  image_url: 'Tauros.png',
  pokedex: 128)
# . . .
Pokemon.create!(name: 'Magikarp',
  type_one: 'Water',
  image_url: 'Magikarp.png',
  pokedex: 129)
# . . .
Pokemon.create!(name: 'Gyarados',
  type_one: 'Water',
  type_two: 'Flying',
  image_url: 'Gyarados.png',
  pokedex: 130)
# . . .
Pokemon.create!(name: 'Lapras',
  type_one: 'Water',
  type_two: 'Ice',
  image_url: 'Lapras.png',
  pokedex: 131)
# . . .
Pokemon.create!(name: 'Ditto',
  type_one: 'Normal',
  image_url: 'Ditto.png',
  pokedex: 132)
# . . .
Pokemon.create!(name: 'Eevee',
  type_one: 'Normal',
  image_url: 'Eevee.png',
  pokedex: 133)
# . . .
Pokemon.create!(name: 'Vaporeon',
  type_one: 'Water',
  image_url: 'Vaporeon.png',
  pokedex: 134)
# . . .
Pokemon.create!(name: 'Jolteon',
  type_one: 'Electric',
  image_url: 'Jolteon.png',
  pokedex: 135)
# . . .
Pokemon.create!(name: 'Flareon',
  type_one: 'Fire',
  image_url: 'Flareon.png',
  pokedex: 136)
# . . .
Pokemon.create!(name: 'Porygon',
  type_one: 'Normal',
  image_url: 'Porygon.png',
  pokedex: 137)
# . . .
Pokemon.create!(name: 'Omanyte',
  type_one: 'Rock',
  type_two: 'Water',
  image_url: 'Omanyte.png',
  pokedex: 138)
# . . .
Pokemon.create!(name: 'Omastar',
  type_one: 'Rock',
  type_two: 'Water',
  image_url: 'Omastar.png',
  pokedex: 139)
# . . .
Pokemon.create!(name: 'Kabuto',
  type_one: 'Rock',
  type_two: 'Water',
  image_url: 'Kabuto.png',
  pokedex: 140)
# . . .
Pokemon.create!(name: 'Kabutops',
  type_one: 'Rock',
  type_two: 'Water',
  image_url: 'Kabutops.png',
  pokedex: 141)
# . . .
Pokemon.create!(name: 'Aerodactyl',
  type_one: 'Rock',
  type_two: 'Flying',
  image_url: 'Aerodactyl.png',
  pokedex: 142)
# . . .
Pokemon.create!(name: 'Snorlax',
  type_one: 'Normal',
  image_url: 'Snorlax.png',
  pokedex: 143)
# . . .
Pokemon.create!(name: 'Articuno',
  type_one: 'Ice',
  type_two: 'Flying',
  image_url: 'Articuno.png',
  pokedex: 144)
# . . .
Pokemon.create!(name: 'Zapdos',
  type_one: 'Electric',
  type_two: 'Flying',
  image_url: 'Zapdos.png',
  pokedex: 145)
# . . .
Pokemon.create!(name: 'Moltres',
  type_one: 'Fire',
  type_two: 'Flying',
  image_url: 'Moltres.png',
  pokedex: 146)
# . . .
Pokemon.create!(name: 'Dratini',
  type_one: 'Dragon',
  image_url: 'Dratini.png',
  pokedex: 147)
# . . .
Pokemon.create!(name: 'Dragonair',
  type_one: 'Dragon',
  image_url: 'Dragonair.png',
  pokedex: 148)
# . . .
Pokemon.create!(name: 'Dragonite',
  type_one: 'Dragon',
  type_two: 'Flying',
  image_url: 'Dragonite.png',
  pokedex: 149)
# . . .
Pokemon.create!(name: 'Mewtwo',
  type_one: 'Psychic',
  image_url: 'Mewtwo.png',
  pokedex: 150)
# . . .
Pokemon.create!(name: 'Mew',
  type_one: 'Psychic',
  image_url: 'Mew.png',
  pokedex: 151)