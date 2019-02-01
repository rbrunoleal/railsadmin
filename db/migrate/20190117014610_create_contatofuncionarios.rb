class CreateContatofuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :contatofuncionarios do |t|
      t.integer :tipo
      t.string :campo
      t.references :funcionario, foreign_key: true
    end
  end
end