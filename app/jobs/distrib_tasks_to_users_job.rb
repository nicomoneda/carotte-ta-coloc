class DistribTasksToUsersJob < ApplicationJob
  queue_as :default

  def perform(coloc)
    coloc_tasks = coloc.tasks.order(points: :desc)
    tasks_to_assign = coloc_tasks.to_a

    current_week = Date.today.beginning_of_week

    tasks_to_assign.each do |task|
      user_with_less_points = coloc.users.order(total_points: :asc).first
      UserTask.create!(user: user_with_less_points, task: task, week_on: current_week)
      sum_points = user_with_less_points.total_points + task.points
      user_with_less_points.update(total_points: sum_points)
    end
  end
end
