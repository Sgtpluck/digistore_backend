class OrderForm

  def initialize(order_hash)
   order_hash[:cart_id]        = order_hash.delete(:cart)
   order_hash[:exp_date]       = order_hash.delete(:expDate)
   order_hash[:customer_name]  = order_hash.delete(:customerName)
   @order_hash = order_hash
  end

  def order
    Order.new(permitted_values)
  end

  private

  def permitted_values
    @order_hash.permit(:customer_name, :email, :status, :cvv, :zip, :exp_date, :cart_id)
  end
end
