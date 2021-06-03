class UserTasksController < ApplicationController
  def edit
    @user_task = UserTask.find(params[:id])
  end

  def update
    @user_task = UserTask.find(params[:id])
  end

  def mark_as_done
    @user_task = UserTask.find(params[:id])
    @task = Task.find(@user_task.task_id)
    @user = User.find(@user_task.user_id)

    @user_task.update(status: true)
    sum_points = @user.current_points + @task.point
    @user.update(current_points: sum_points)

    redirect_to root_path
  end

  private

  # def dreams_params
  #   params.require(:user_tasks).permit(:status)
  # end
end
