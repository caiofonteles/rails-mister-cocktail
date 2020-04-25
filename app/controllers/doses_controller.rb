class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = params[:cocktail_id]
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
