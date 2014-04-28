class Pokemon < ActiveRecord::Base
  has_many :trainer_pokemons
  has_many :pokemon_trainers
  
  before_destroy :ensure_not_referenced_by_any_trainer_pokemon
  
  private
    def ensure_not_referenced_by_any_trainer_pokemon
	  if trainer_pokemons.empty?
	    return true
	  else
	    errors.add(:base, 'Trainers own this Pokemon')
		return false
	  end
	end
end
