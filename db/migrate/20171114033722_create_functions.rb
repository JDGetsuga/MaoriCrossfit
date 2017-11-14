class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :titulo
      t.text :descripcion
      t.string :tipo

      t.timestamps null: false
    end
  end
end
