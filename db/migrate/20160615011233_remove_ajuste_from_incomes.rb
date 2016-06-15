class RemoveAjusteFromIncomes < ActiveRecord::Migration
  def change
    remove_column :incomes, :ajuste, :string
    remove_column :incomes, :valor, :decimal
  end
end
