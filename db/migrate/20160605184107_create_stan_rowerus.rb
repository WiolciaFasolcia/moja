class CreateStanRowerus < ActiveRecord::Migration
  def change
    create_table :stan_rowerus do |t|
      t.string :nazwa

      t.timestamps null: false
    end
  end
end
