class CreateColumnValorFromBills < ActiveRecord::Migration
  def change
    add_column :bills, :valor, :decimal, :precision => 8, :scale => 2
  end
end
