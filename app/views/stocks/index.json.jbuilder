json.array!(@stocks) do |stock|
  json.extract! stock, :id, :name, :total_shares, :shares_left, :value
  json.url stock_url(stock, format: :json)
end
