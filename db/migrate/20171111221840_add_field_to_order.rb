class AddFieldToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :source, :string
    add_column :orders, :charge, :string
  end
end
