class CreateContafavorecidos < ActiveRecord::Migration[5.2]
  def change
    create_table :contafavorecidos do |t|
      t.references :banco, foreign_key: true
      t.string :agencia
      t.integer :agenciadigito
      t.string :conta
      t.integer :contadigito
      t.integer :tipo
      t.references :favorecido, foreign_key: true
    end
  end
end
