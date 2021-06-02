class UserTasksController < ApplicationController
  def edit
    @user_task = UserTask.find(params[:id])
  end

  def update
    @user_task = UserTask.find(params[:id])
  end

  def mark_as_done
    @user_task = UserTask.find(params[:id])
    @user_task.update(status: true)

    redirect_to root_path
  end

  private

  # def dreams_params
  #   params.require(:user_tasks).permit(:status)
  # end
end
