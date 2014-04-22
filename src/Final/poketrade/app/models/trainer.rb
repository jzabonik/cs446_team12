class Trainer < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar

  validates :avatar, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)\Z}i,
  	message: 'must be a GIF, JPG or PNG image.'
  }
  
end
