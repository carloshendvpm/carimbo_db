class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :numero_de_telefone

      t.timestamps
    end
  end
end
