class Project < ActiveRecord::Base
  # this is for will_paginate so we have 3 projects per page
  self.per_page = 3
  
  belongs_to :user
  has_many :tasks,  dependent: :destroy
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}
  

  # user.id = likes.user_id
  # where p.id = likes.project_id
end
