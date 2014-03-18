json.item do 
  json.extract! @item, :id, :quantity 
  json.currentPrice @item.current_price
  json.product @item.product_id
  json.cart @item.cart_id
end