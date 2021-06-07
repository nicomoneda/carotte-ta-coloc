class FunCardsController < ApplicationController
  def index
    @fun_cards = FunCard.all
  end

  def show
    @fun_card = FunCard.find(params[:id])
    @consommation = Consommation.new
  end
end
