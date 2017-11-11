class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :price
      t.boolean :payed, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
