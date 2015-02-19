class Category < ActiveRecord::Base

  has_many :categorizations
  has_many :projects, through: :categorizations

  # TODO add validation for name/title
end
