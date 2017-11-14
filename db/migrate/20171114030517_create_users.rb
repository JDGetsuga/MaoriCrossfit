class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.text :direccion
      t.string :cedula
      t.date :fechanacimiento
      t.string :telefono
      t.boolean :estado
      t.date :fechacontrato
      t.date :fechafincontrato
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
