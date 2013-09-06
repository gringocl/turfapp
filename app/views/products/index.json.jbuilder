json.array!(@products) do |product|
  json.extract! product, :code, :name
  json.url product_url(product, format: :json)
end
