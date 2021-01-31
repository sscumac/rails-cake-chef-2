class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    # @dose = Dose.new
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to "/", notice: "Zutat hinzugefügt"
      # redirect_back(fallback_location: new_cake_dose_path)
    else
      render :new # jump to view "new"
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
