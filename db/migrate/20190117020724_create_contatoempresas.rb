class CreateContatoempresas < ActiveRecord::Migration[5.2]
  def change
    create_table :contatoempresas do |t|
      t.integer :tipo
      t.string :campo
      t.references :empresa, foreign_key: true
    end
  end
end
