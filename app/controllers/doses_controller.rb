class DosesController < ApplicationController
  def new
    @cake = Cake.find(params[:cake_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cake = Cake.find(params[:cake_id])
    @dose.cake = @cake
    if @dose.save
      redirect_to cake_path(@cake), notice: "Zutat zu #{@cake.name} hinzugefügt"
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete
    
    redirect_to cake_path(@dose.cake)
  end

  private

  def dose_params
    params.require(:dose).permit(:amount, :unit, :ingredient_id, :cake_id)
  end
end
