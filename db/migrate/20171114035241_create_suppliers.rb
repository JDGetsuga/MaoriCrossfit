class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :titulo
      t.string :razonsocial
      t.string :telefono
      t.text :direccion
      t.string :email

      t.timestamps null: false
    end
  end
end
