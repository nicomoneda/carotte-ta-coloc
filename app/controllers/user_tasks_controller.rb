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

  def carotte_task
    @user_task = UserTask.find(params[:id])
    @user = @user_task.user
    @task = @user_task.task

    if @user.current_points >= @task.carotte_card_points
      other_users = current_coloc.users -  @user  
      carotted_user = other_users.sample
      @user_task.update(user: carotted_user)
      
      carotted_points = @user.current_points - @task.carotte_card_points
      carotted_total_points = @user.total_points - @task.carotte_card_points
      @user.update(current_points: carotted_points, total_points: carotted_total_points)
    end
  end

  private

  # def dreams_params
  #   params.require(:user_tasks).permit(:status)
  # end
end
