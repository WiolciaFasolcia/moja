class CreateWidoks < ActiveRecord::Migration
  def change
    create_table :widoks do |t|

      t.timestamps null: false
    end
  end
end
