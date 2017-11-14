class CreateDetailSales < ActiveRecord::Migration
  def change
    create_table :detail_sales do |t|
      t.string :descripcion
      t.integer :cantidad
      t.decimal :precio
      t.decimal :descuento
      t.decimal :subtotal
      t.string :tipo
      t.references :headersale, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.references :membership, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
