class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
    @coloc = current_user.coloc
    @tasks_to_do = UserTask.where(user: current_user, status: false)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.coloc = current_coloc
    if @task.save!
      redirect_to tasks_path
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :points, :image)
  end
end
