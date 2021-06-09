class ConsommationsController < ApplicationController
  before_action :set_fun_card

  def create
    @user = current_user

    if @user.current_points >= @fun_card.points
      @consommation = Consommation.new(conso_params)
      @consommation.user = @user
      @consommation.fun_card = @fun_card

      if @consommation.save
        fun_points = @user.current_points - @fun_card.points
        old_points = @user.current_points
        fun_total_points = @user.current_points - @fun_card.points

        @user.update(current_points: fun_points, total_points: fun_total_points)
        redirect_to root_path(old_points: old_points)
      else
        render 'fun_cards/show'
      end
    end
  end

  private

  def set_fun_card
    @fun_card = FunCard.find(params[:shop_id])
  end

  def conso_params
    params.require(:consommation).permit(:week_on)
  end

end

