class Task < ActiveRecord::Base
  belongs_to :project
  # BODY = [Done, Undone]
end
