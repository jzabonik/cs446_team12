json.array!(@trade_requests) do |trade_request|
  json.extract! trade_request, :id
  json.url trade_request_url(trade_request, format: :json)
end
