class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    6.times do
	  num = rand(1..151)
      pokemon = Pokemon.where(pokedex: num).take
      TrainerPokemon.create(:trainer_id => current_trainer.id, :pokemon_id => pokemon.id)
	end
    profile_index_path
  end

end
