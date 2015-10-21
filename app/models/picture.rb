class Picture < ActiveRecord::Base
  belongs_to :user

  has_many :comments

  validates_presence_of :url

  # TODO Validate that urls are real
end
