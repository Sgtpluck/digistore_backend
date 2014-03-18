class CreateProductions < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :avatar
      t.string :image

      t.timestamps
    end
  end
end
