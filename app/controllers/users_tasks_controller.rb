class UsersTasksController < ApplicationController
  def create
    # Je récupère mes tâches
    @tasks = Task.all(task_params)
    # J'alloue mes tâches de manière aléatoire. Elles sont au nombre de 2 par personnes.
    @user_tasks = Task.to_a.sample(2)
    @tasks.user_tasks = @user_tasks
    @task.save
    # je redirige à la page de la coloc
    redirect_to coloc_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :points)
  end
end
