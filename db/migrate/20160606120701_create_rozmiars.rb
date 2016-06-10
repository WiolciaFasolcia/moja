class CreateRozmiars < ActiveRecord::Migration
  def change
    create_table :rozmiars do |t|
      t.integer :rozmiar

      t.timestamps null: false
    end
  end
end
