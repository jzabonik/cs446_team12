class TradeController < ApplicationController
  before_filter :check_logged_in!
  
  def index
    @current_pokemon = Array.new
    @pokemon = Pokemon.find(params[:pokemon_id])
	@trainer = Trainer.find(params[:trainer_id])
	
	TrainerPokemon.where(trainer_id: current_trainer.id).each do |trainerpokemon| 
	  @current_pokemon.push(Pokemon.find(trainerpokemon.pokemon_id))
	end
  end
  
  private
	def check_logged_in! # if admin is not logged in, user must be logged in
      if !admin_signed_in?
        authenticate_trainer!
	  else
		authenticate_admin!
      end   
    end
end
