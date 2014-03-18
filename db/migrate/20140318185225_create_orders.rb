class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :email
      t.string :status
      t.string :creditcard
      t.string :cvv
      t.string :zip
      t.string :exp_date

      t.timestamps
    end
  end
end
