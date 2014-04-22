class AddTrainerAvatar < ActiveRecord::Migration
  def self.up
    add_column :trainers, :avatar, :string
  end

  def self.down
    remove_column :trainers, :avatar
  end
end
