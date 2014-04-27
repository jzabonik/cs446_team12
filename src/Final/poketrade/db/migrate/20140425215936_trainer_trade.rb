class TrainerTrade < ActiveRecord::Migration
  def change
    create_table :trade_requests_trainer_pokemons do |t|
	  t.belongs_to :trainer_pokemon
	  t.belongs_to :trade_request
	end
  end
end
