json.array!(@products) do |product|
  json.extract! product, :id, :product_id, :title, :price, :description, :seller_id
  json.url product_url(product, format: :json)
end
