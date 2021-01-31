class CakesController < ApplicationController
  def index
    @cakes = Cake.all
  end

  def new
    @cake = Cake.new
  end

  def show
    @cake = Cake.find(params[:id])
  end

  def create
    @cake = Cake.new(cake_params)
    if @cake.save
      (redirect_to cake_path(@cake))
    else
      (render :new) # jump to view "new"
    end
  end

  def destroy
    @cake = Cake.find(params[:id])
    @cake.delete

    redirect_to root_path, notice: "#{@cake.name} gelöscht"
  end

  private

  def cake_params
    params.require(:cake).permit(:name, :photo, :description, :time)
  end
end
