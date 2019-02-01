class CreateContaempresas < ActiveRecord::Migration[5.2]
  def change
    create_table :contaempresas do |t|
      t.references :banco, foreign_key: true
      t.string :agencia
      t.integer :agenciadigito
      t.string :conta
      t.integer :contadigito
      t.integer :tipo
      t.boolean :realizacao
      t.decimal :saldo
      t.boolean :ativo
    end
  end
end
