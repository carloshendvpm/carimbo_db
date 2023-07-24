# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_24_153446) do
  create_table "authors", force: :cascade do |t|
    t.string "nome"
    t.date "data_de_nascimento"
    t.string "pais_de_origem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_livros", id: false, force: :cascade do |t|
    t.integer "livro_id", null: false
    t.integer "author_id", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "numero_de_telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emprestimos", force: :cascade do |t|
    t.date "data_de_emprestimo"
    t.date "data_de_devolucao"
    t.integer "cliente_id", null: false
    t.integer "livro_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_emprestimos_on_cliente_id"
    t.index ["livro_id"], name: "index_emprestimos_on_livro_id"
  end

  create_table "livro_authors", force: :cascade do |t|
    t.integer "livro_id", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_livro_authors_on_author_id"
    t.index ["livro_id"], name: "index_livro_authors_on_livro_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "editora"
    t.integer "numero_de_exemplares"
    t.string "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "emprestimos", "clientes"
  add_foreign_key "emprestimos", "livros"
  add_foreign_key "livro_authors", "authors"
  add_foreign_key "livro_authors", "livros"
end
