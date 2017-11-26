class RenameColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :source, :source_id
    rename_column :orders, :charge, :charge_id
  end
end
