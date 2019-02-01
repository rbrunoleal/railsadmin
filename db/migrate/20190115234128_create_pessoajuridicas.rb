class CreatePessoajuridicas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoajuridicas do |t|
      t.string :cnpj
      t.string :razaosocial
      t.string :nomefantasia
      t.references :cnae, foreign_key: true
    end
  end
end
