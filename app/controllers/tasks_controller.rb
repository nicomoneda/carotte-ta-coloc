class TasksController < ApplicationController
  def index
    # @tasks = Task.all.includes(current_user_task: :user)
    @tasks_of_the_week = UserTask.current_week.map(&:task)
  end

  def show
    @task = Task.find(params[:id])
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
    params.require(:task).permit(:name, :description, :points)
  end
end
