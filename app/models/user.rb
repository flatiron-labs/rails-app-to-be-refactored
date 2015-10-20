class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_pictures
  has_many :pictures, through: :user_pictures

  validates :name, presence: true

  def active?
    last_sign_in_at > 1.week.ago
  end

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
