class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.integer :room_id
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
