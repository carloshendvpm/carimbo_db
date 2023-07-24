class CreateAuthor < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :nome
      t.date :data_de_nascimento
      t.string :pais_de_origem

      t.timestamps
    end
  end
end
