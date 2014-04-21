class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type_one
      t.string :type_two
      t.string :image_url
      t.integer :pokedex

      t.timestamps
    end
  end
end
