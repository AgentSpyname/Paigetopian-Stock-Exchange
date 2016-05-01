json.array!(@transfers) do |transfer|
  json.extract! transfer, :id, :amount, :status, :month, :year
  json.url transfer_url(transfer, format: :json)
end
