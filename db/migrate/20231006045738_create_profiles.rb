class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :user_id
      t.integer :user_name
      t.integer :school_id
      t.string :profile_image
      t.integer :grade
      t.string :club_id
      t.integer :type_id
      t.text :comments

      t.timestamps
    end
  end
end