class CreatePokemonTrainers < ActiveRecord::Migration
  def change
    create_table :pokemon_trainers do |t|
      t.references :pokemon, index: true
      t.references :trainer, index: true
	  
      t.timestamps
    end
  end
end
