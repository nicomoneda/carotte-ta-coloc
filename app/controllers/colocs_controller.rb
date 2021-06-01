class ColocsController < ApplicationController
  def new
    @coloc = Coloc.new
  end

  def create
    @coloc = Coloc.new(coloc_params)

    if @coloc.save!
      current_user.update(coloc_id: @coloc.id)
    else
      render :new
    end
  end

  def join
    current_user.update(coloc: @coloc)
    redirect_to root_path
  end

  private

  def set_coloc
    @coloc = Coloc.find(params[:id])
  end

  def coloc_params
    params.require(:coloc).permit(:name)
  end
end
