class Picture < ActiveRecord::Base
  belongs_to :user

  has_many :picture_comments

  validates_presence_of :url

  # TODO Validate that urls are real
end
