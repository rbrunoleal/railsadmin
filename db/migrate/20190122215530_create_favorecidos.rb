class CreateFavorecidos < ActiveRecord::Migration[5.2]
  def change
    create_table :favorecidos do |t|
      t.references :pessoa, foreign_key: true
      t.boolean :ativo
    end
  end
end
