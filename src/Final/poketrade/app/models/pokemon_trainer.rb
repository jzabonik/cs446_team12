class PokemonTrainer < ActiveRecord::Base
  belongs_to :pokemon
  belongs_to :trainer
  has_and_belongs_to_many :trade_completes
end
