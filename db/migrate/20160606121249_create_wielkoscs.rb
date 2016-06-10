class CreateWielkoscs < ActiveRecord::Migration
  def change
    create_table :wielkoscs do |t|
      t.integer :rozmiar

      t.timestamps null: false
    end
  end
end
