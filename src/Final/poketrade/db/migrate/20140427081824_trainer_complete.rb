class TrainerComplete < ActiveRecord::Migration
  def change
    create_table :pokemon_trainers_trade_completes do |t|
	  t.belongs_to :pokemon_trainer
	  t.belongs_to :trade_complete
	end
  end
end
