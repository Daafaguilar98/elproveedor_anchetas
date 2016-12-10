class CreateAncheta < ActiveRecord::Migration
  def change
    create_table :ancheta do |t|
      t.text :nombre
      t.integer :celular
      t.text :direccion
      t.text :ancheta

      t.timestamps null: false
    end
  end
end
