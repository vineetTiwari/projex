class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :user, uniqueness: { scope: :project} #will make it so the pair of user and tweet is unique

end
