json.array!(@trade_completes) do |trade_complete|
  json.extract! trade_complete, :id
  json.url trade_complete_url(trade_complete, format: :json)
end
