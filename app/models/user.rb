class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pictures
  has_many :comments

  validates :name, presence: true

  def active?
    last_sign_in_at > 1.week.ago
  end

  def has_any_pictures?
    pictures.any?
  end
end
