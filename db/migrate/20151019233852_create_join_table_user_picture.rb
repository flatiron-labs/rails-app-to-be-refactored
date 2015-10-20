class CreateJoinTableUserPicture < ActiveRecord::Migration
  def change
    create_table :user_pictures do |t|
      t.integer :user_id
      t.integer :picture_id
    end
  end
end
