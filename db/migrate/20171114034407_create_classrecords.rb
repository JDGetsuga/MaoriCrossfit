class CreateClassrecords < ActiveRecord::Migration
  def change
    create_table :classrecords do |t|
      t.references :user, index: true, foreign_key: true
      t.references :membership, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
