class DropUserPictures < ActiveRecord::Migration
  def change
    drop_table :user_pictures
  end
end
