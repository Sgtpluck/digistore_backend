json.product @products do |product|
  json.extract! product, :id, :name, :description
end