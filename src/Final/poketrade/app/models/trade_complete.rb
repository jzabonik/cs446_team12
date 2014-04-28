class TradeComplete < ActiveRecord::Base
  belongs_to :completer, :class_name => 'Trainer'
  belongs_to :completee, :class_name => 'Trainer'
  has_and_belongs_to_many :pokemon_trainers
end
