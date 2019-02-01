class CreateCnaes < ActiveRecord::Migration[5.2]
  def change
    create_table :cnaes do |t|
      t.string :codigo
      t.string :descricao
    end
  end
end
