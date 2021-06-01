class PagesController < ApplicationController
  before_action :authenticate_user!#, only: [ :home ]

  def home
    @coloc = current_user.coloc
  end
end
