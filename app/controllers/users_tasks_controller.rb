class UsersTasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :points)
  end
end
