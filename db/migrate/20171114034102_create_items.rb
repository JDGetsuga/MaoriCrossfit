class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nombre
      t.decimal :preciocompra
      t.decimal :precioventa
      t.integer :cantidad
      t.integer :cantidadminima
      t.decimal :ganancia
      t.string :tipo
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
