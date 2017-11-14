class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :client, index: true, foreign_key: true
      t.date :fechainicio
      t.date :fechaexpiracion
      t.references :service, index: true, foreign_key: true
      t.references :rate, index: true, foreign_key: true
      t.integer :entradasrestantes
      t.string :estado

      t.timestamps null: false
    end
  end
end
