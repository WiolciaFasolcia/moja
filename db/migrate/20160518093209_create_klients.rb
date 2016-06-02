class CreateKlients < ActiveRecord::Migration
  def change
    create_table :klients do |t|
      t.string :name
      t.string :surname
      t.integer :pesel
      t.string :nr_dowodu

      t.timestamps null: false
    end
  end
end
