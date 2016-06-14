class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.decimal :valor
      t.string :titulo
      t.string :descrição
      t.decimal :ajuste
      t.integer :parcelas
      t.integer :mInicio
      t.integer :mesFinal
      t.boolean :saque
      t.boolean :transferencia
      t.boolean :cartão
      t.boolean :internet

      t.timestamps null: false
    end
  end
end
