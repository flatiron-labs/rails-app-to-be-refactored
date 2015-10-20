class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_pictures
  has_many :pictures, through: :user_pictures

  def has_any_pictures?
    pictures.count > 0
  end

  def picture_comments
    comments = []
    pictures.each do |picture|
      comments << picture.picture_comments
    end

    comments.flatten
  end
end
