class Picture < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_pictures
  has_many :picture_comments

  validates_presence_of :url

  # TODO Validate that urls are real
end
