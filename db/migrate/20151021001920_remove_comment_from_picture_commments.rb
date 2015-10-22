class RemoveCommentFromPictureCommments < ActiveRecord::Migration
  def change
    remove_column :picture_comments, :comment
  end
end
