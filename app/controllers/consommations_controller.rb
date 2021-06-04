class ConsommationsController < ApplicationController

  def buy
    @fun_card = FunCard.find(params[:id])
    @user = current_user

    if @user.current_points >= @fun_card.points
      @consommation = Consommation.new(conso_params)
      @consommation.user = @user
      @consommation.fun_card = @fun_card

      if @consommation.save
        fun_points = @user.current_points - @fun_card.points
        fun_total_points = @user.current_points - @fun_card.points
        @user.update(current_points: fun_points, total_points: fun_total_points)
        redirect_to root_path
      else
        render 'fun_cards/show'
      end
    end
  end

  private

  def conso_params
    params.require(:consommations).permit(:week_on)
  end

end
