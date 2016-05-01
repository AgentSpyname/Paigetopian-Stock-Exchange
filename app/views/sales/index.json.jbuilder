json.array!(@sales) do |sale|
  json.extract! sale, :id, :stock_id, :shares, :profit, :username
  json.url sale_url(sale, format: :json)
end
