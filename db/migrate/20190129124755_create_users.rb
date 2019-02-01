class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :tipo
      t.integer :status

      t.timestamps
    end
  end
end
