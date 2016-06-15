class AddAjusteToBills < ActiveRecord::Migration
  def change
    add_column :bills, :ajuste, :decimal, :precision => 8, :scale => 2
  end
end
