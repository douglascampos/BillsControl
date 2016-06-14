class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :nome
      t.decimal :valor
      t.boolean :dividido
      t.string :ajuste

      t.timestamps null: false
    end
  end
end
