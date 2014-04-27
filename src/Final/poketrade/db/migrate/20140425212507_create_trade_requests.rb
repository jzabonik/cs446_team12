class CreateTradeRequests < ActiveRecord::Migration
  def change
    create_table :trade_requests do |t|
      t.references :trader
      t.references :tradee
	  t.string :completed, :default => "no"
      t.timestamps
    end
  end
end
