class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.float :preco
      t.integer :quantidade

      t.timestamps
    end
  end
end
