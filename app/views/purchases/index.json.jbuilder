json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :username, :stock_id, :shares, :profit
  json.url purchase_url(purchase, format: :json)
end
