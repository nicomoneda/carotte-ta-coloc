class PagesController < ApplicationController
  before_action :authenticate_user!#, only: [ :home ]

  def home
    @tasks_of_the_week = UserTask.current_week.map(&:task)
    @user_tasks_current_week = UserTask.current_week
    @my_tasks_current_week = @user_tasks_current_week.where(user: current_user).map(&:task)
    @other_tasks_current_week = @user_tasks_current_week.where.not(user: current_user).map(&:task)
    # @user_id = current_user.id
    # @current_tasks = UserTask.find(@user_id)
  end
end


