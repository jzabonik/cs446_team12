class CreateTradeCompletes < ActiveRecord::Migration
  def change
    create_table :trade_completes do |t|
	  t.references :completer
      t.references :completee
      t.timestamps
    end
  end
end
