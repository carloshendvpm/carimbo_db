class CreateLivroAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :livro_authors do |t|
      t.references :livro, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
