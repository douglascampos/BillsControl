class RemoveValorFromBills < ActiveRecord::Migration
  def change
    remove_column :bills, :valor, :decimal
  end
end
