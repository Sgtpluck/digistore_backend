json.cart do 
  json.extract! @cart, :id
  json.items @cart.items.map do |item|
    item.id
  end
end