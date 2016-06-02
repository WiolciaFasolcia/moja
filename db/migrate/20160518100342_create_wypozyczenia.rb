class CreateWypozyczenia < ActiveRecord::Migration
  def change
    create_table :wypozyczenia do |t|
      t.date :date_begin
      t.date :date_end
      t.boolean :status
      t.integer :klient_id
      t.integer :rower_id

      t.timestamps null: false
    end
    add_foreign_key :wypozyczenia, :klients
    add_foreign_key :wypozyczenia, :rowers
  end
end
