class AddDefaultToOrderStatus < ActiveRecord::Migration
  def change
    change_column :orders, :status, :string, default: 'paid'
  end
end
