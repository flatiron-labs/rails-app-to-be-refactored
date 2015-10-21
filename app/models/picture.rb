class Picture < ActiveRecord::Base
  belongs_to :user

  has_many :comments

  # TODO: improve format regex
  validates :url, presence: true,
                  format: { with: /https?:\/\/.+/i, on: :create }

end
