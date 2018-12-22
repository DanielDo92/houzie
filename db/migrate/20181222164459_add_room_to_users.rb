class AddRoomToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :room, index: true
    add_foreign_key :users, :rooms
  end
end
