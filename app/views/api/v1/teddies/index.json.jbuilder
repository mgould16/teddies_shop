json.array! @teddies do |teddy|
  json.extract! teddy, :id, :price_cents, :sku, :name, :category_id, :photo_url
end
