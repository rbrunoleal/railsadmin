class CreateUnidades < ActiveRecord::Migration[5.2]
  def change
    create_table :unidades do |t|
      t.string :nome
    end
  end
end
