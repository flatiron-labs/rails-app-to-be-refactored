class DropPictureComments < ActiveRecord::Migration
  def change
    drop_table :picture_comments
  end
end
