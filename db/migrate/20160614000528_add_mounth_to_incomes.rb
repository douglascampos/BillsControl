class AddMounthToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :mounth, :integer
  end
end
