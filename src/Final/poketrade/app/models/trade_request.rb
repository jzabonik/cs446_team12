class TradeRequest < ActiveRecord::Base
  belongs_to :trader, :class_name => 'Trainer'
  belongs_to :tradee, :class_name => 'Trainer'
  has_and_belongs_to_many :trainer_pokemons
end
