class IngredientsController < ApplicationController

  def create
    @ingredient = Ingredient.new(params[:unit, :quantity])
    if @ingredient.save
      redirect_to @ingredient
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

end
