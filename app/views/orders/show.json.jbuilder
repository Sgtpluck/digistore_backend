json.order do 
  json.extract! @order, :id, :email, :status, :cvv, :zip, :creditcard
  json.customerName @order.customer_name
  json.expDate @order.exp_date
  json.createdAt @order.created_at
end