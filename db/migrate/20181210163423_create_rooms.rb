class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.integer :level, null: false
      t.integer :price, null: false, default: 1_000_000
      t.integer :occupants, null: false, default: 0
      t.decimal :area, null: false, precision: 10, scale: 2
      t.boolean :suited, null: false, default: true

      t.timestamps null: false
    end
  end
end
