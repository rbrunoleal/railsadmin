class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :nome
      t.string :sigla
      t.references :unidade, foreign_key: true
    end
  end
end
