class CreateJoinTableLivroAuthor < ActiveRecord::Migration[7.0]
  def change
    create_join_table :livros, :authors do |t|
      # t.index [:livro_id, :author_id]
      # t.index [:author_id, :livro_id]
    end
  end
end
