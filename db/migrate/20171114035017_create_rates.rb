class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :nombre
      t.decimal :precio
      t.decimal :descuento
      t.integer :entradas
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
