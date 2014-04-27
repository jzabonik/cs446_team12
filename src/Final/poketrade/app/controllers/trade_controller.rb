class TradeController < ApplicationController
  def index
    @current_pokemon = Array.new
    @pokemon = Pokemon.find(params[:pokemon_id])
	@trainer = Trainer.find(params[:trainer_id])
	
	TrainerPokemon.where(trainer_id: current_trainer.id).each do |trainerpokemon| 
	  @current_pokemon.push(Pokemon.find(trainerpokemon.pokemon_id))
	end
  end
end
