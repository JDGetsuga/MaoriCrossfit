class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.string :genero
      t.string :telefono
      t.string :email
      t.date :nacimiento
      t.text :direccion
      t.string :ciudad
      t.string :pais
      t.string :provincia

      t.timestamps null: false
    end
  end
end
