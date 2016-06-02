class CreateRodzajRowerus < ActiveRecord::Migration
  def change
    create_table :rodzaj_rowerus do |t|
      t.string :rodzaj

      t.timestamps null: false
    end
  end
end
