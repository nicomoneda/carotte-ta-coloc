class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :task, foreign_key: 'tasks_id', class_name: 'Task'

end
