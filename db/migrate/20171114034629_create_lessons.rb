class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.date :fechaactual
      t.references :user, index: true, foreign_key: true
      t.time :horainicio
      t.time :horafin
      t.references :service, index: true, foreign_key: true
      t.integer :capacidad

      t.timestamps null: false
    end
  end
end
