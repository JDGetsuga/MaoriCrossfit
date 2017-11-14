class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
