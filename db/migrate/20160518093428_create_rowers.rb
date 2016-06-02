class CreateRowers < ActiveRecord::Migration
  def change
    create_table :rowers do |t|
      t.string :rodzaj
      t.string :wielkosc_ramy
      t.string :stan
      t.integer :rodzaj_roweru_id

      t.timestamps null: false
    end
    add_foreign_key :rower, :rodzaj_rowerus
  end
end
