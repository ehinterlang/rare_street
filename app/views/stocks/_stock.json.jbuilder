json.extract! stock, :id, :ticker, :name, :price, :created_at, :updated_at
json.url stock_url(stock, format: :json)