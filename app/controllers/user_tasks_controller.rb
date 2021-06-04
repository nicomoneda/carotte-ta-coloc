class UserTasksController < ApplicationController
  before_action :set_user_vars, only: [:mark_as_done, :carotte]

  def edit
    @user_task = UserTask.find(params[:id])
  end

  def update
    @user_task = UserTask.find(params[:id])
  end

  def mark_as_done
    @user_task.update(status: true)
    sum_points = @user.current_points + @task.points
    @user.update(current_points: sum_points)
    redirect_to root_path
  end

  def carotte
    array_user = []
    array_user << @user
    if @user.current_points >= @task.carotte_card_points
      other_users = current_coloc.users - array_user
      carotted_user = other_users.sample
      @user_task.update(user: carotted_user)

      carotted_points = @user.current_points - @task.carotte_card_points
      carotted_total_points = @user.total_points - @task.carotte_card_points
      @user.update(current_points: carotted_points, total_points: carotted_total_points)

      redirect_to carotte_validation_user_task_path
    end
  end

  def carotte_validation
  end

  private

  def set_user_vars
    @user_task = UserTask.find(params[:id])
    @task = @user_task.task
    @user = current_user
  end

  # def dreams_params
  #   params.require(:user_tasks).permit(:status)
  # end
end
