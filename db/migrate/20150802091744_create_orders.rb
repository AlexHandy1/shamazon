class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.integer :discount
      t.float :total

      t.timestamps null: false
    end
  end
end
