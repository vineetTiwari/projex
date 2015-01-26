class Project < ActiveRecord::Base
  belongs_to :user
  has_many :task
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}
end
