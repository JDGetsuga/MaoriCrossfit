class CreateHeadersales < ActiveRecord::Migration
  def change
    create_table :headersales do |t|
      t.date :fechaventa
      t.references :client, index: true, foreign_key: true
      t.time :horaventa
      t.references :user, index: true, foreign_key: true
      t.decimal :iva
      t.decimal :totalefectivo
      t.decimal :totaltarjeta
      t.decimal :total

      t.timestamps null: false
    end
  end
end
