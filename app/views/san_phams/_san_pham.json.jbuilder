json.extract! san_pham, :id, :name, :imgUrl, :price, :created_at, :updated_at
json.url san_pham_url(san_pham, format: :json)
