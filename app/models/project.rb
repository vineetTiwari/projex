class Project < ActiveRecord::Base
  belongs_to :user


  has_many :tasks,  dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}

  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  # user.id = likes.user_id
  # where p.id = likes.project_id
end
