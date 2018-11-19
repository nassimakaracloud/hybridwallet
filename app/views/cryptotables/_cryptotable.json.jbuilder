json.extract! cryptotable, :id, :symbol, :user_id, :unit_price, :total_amount, :created_at, :updated_at
json.url cryptotable_url(cryptotable, format: :json)
