class PagesController < ApplicationController
  before_action :authenticate_user!#, only: [ :home ]

  def home
    @coloc = current_user.coloc
    @tasks_to_do = UserTask.where(user: current_user, status: false)
  end
end
