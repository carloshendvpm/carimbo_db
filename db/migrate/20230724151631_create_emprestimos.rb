class CreateEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :emprestimos do |t|
      t.date :data_de_emprestimo
      t.date :data_de_devolucao
      t.references :cliente, null: false, foreign_key: true
      t.references :livro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
