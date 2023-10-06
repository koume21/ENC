class CreateGoods < ActiveRecord::Migration[6.1]
  def change
    create_table :goods do |t|
      t.integer :user_id
      t.integer :good_id

      t.timestamps
    end
  end
end
