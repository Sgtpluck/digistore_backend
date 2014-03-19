json.product do
  json.extract! @product, :id, :name, :description, :price, :image
end