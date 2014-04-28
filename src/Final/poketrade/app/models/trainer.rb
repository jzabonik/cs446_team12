class Trainer < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :trainer_pokemons
  has_many :pokemon_trainers
  has_many :sent_trades, :class_name => 'TradeRequest', :foreign_key => 'trader_id'
  has_many :received_trades, :class_name => 'TradeRequest', :foreign_key => 'tradee_id'
  has_many :sent_completes, :class_name => 'TradeComplete', :foreign_key => 'completer_id'
  has_many :received_completes, :class_name => 'TradeComplete', :foreign_key => 'completee_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar

  validates :avatar, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)\Z}i,
  	message: 'must be a GIF, JPG or PNG image.'
  }
  
end
