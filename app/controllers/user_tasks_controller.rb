class UserTasksController < ApplicationController
  def valide_task
    @user_task = UserTask.find(params[:id])
    @task = Task.find(@user_task.task_id)
    @user = User.find(@user_task.user_id)

    @user_task.update(status: true)
    sum_points = @user.current_points + @task.point
    @user.update(current_points: sum_points)

    # redirect_to homepage_path (A definir pour revenir au dashboard de la coloc, voir avec Louis)
  end
end
