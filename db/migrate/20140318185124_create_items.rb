class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :cart_id
      t.integer :current_price

      t.timestamps
    end
  end
end
