class Livro < ApplicationRecord
  has_and_belongs_to_many :authors, class_name: 'Author', join_table: 'authors_livros'
  has_many :emprestimos
end
