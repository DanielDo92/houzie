class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :type, null: false
      t.integer :unit_count, null: false, default: 0
      t.integer :total_price, null: false, default: 0
      t.boolean :paid, null: false, default: false
      t.references :room, null: false, index: true
      t.timestamps null: false
    end
  end
end
