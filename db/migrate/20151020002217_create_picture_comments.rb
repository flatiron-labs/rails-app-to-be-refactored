class CreatePictureComments < ActiveRecord::Migration
  def change
    create_table :picture_comments do |t|
      t.integer :picture_id
      t.string :comment
    end
  end
end
