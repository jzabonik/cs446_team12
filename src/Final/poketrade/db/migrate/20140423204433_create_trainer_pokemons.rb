class CreateTrainerPokemons < ActiveRecord::Migration
  def change
    create_table :trainer_pokemons do |t|
      t.references :pokemon, index: true
      t.references :trainer, index: true

      t.timestamps
    end
  end
end
