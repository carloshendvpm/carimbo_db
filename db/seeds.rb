author1 = Author.create(nome: "J.R.R. Tolkien", data_de_nascimento: "1892-01-03", pais_de_origem: "South Africa")
author2 = Author.create(nome: "George R.R. Martin", data_de_nascimento: "1948-09-20", pais_de_origem: "United States")

livro1 = Livro.create(titulo: "O Senhor dos Anéis", editora: "HarperCollins", numero_de_exemplares: 10, isbn: "1234567890")
livro2 = Livro.create(titulo: "A Game of Thrones", editora: "Bantam Books", numero_de_exemplares: 15, isbn: "0987654321")

livro1.authors << author1
livro2.authors << author2

cliente1 = Cliente.create(nome: "Carlos", endereco: "Rua das Flores, 123", numero_de_telefone: "123456789")
cliente2 = Cliente.create(nome: "Maria", endereco: "Avenida das Árvores, 456", numero_de_telefone: "987654321")

Emprestimo.create(data_de_emprestimo: Date.today, data_de_devolucao: Date.today + 7.days, cliente: cliente1, livro: livro1)
Emprestimo.create(data_de_emprestimo: Date.today, data_de_devolucao: Date.today + 7.days, cliente: cliente2, livro: livro2)
