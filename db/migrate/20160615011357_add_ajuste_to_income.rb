class AddAjusteToIncome < ActiveRecord::Migration
  def change
    add_column :incomes, :ajuste, :decimal, :precision => 8, :scale => 2
    add_column :incomes, :valor, :decimal, :precision => 8, :scale => 2
  end
end
