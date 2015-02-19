class Task < ActiveRecord::Base
  belongs_to :project

  has_many :favourites 
  has_many :users, through: :favourites

  validates :title, presence: true
  validates :body, presence: true

  # TODO add a validation for title and body
  # BODY = [Done, Undone]
end
