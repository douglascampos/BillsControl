class RemoveAjusteFromBills < ActiveRecord::Migration
  def change
    remove_column :bills, :ajuste, :decimal
  end
end
