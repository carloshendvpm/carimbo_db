class Emprestimo < ApplicationRecord
  belongs_to :cliente
  belongs_to :livro
end
