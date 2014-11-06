class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
     @recipe = Recipe.new
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    @recipe_form.inspect
    if @recipe_form.save
      redirect_to recipes_path(@recipe_form.recipe.id), notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(find_params)
      redirect_to recipes_show_path(@recipe)
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path(@recipe)
  end

  def upvote
    @recipe = Recipe.find(params[:id])
    if @recipe.save
      redirect_to recipes_show_path(@recipe)
    else
      render 'show'
    end
  end




  private

  def recipe_params
    params.require(:recipe).permit(:title, :directions, :image)
  end

end
