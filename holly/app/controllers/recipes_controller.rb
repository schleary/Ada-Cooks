class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
     @recipe = Recipe.new
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.save
      redirect_to recipes_path(@recipe_form.recipe.id)
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    puts @recipe.measurements.inspect
  end

  def update
    #@recipe = Recipe.find(params[:id])
    puts "*****************"
    puts "GOT HERE"
    #@recipe.destroy
    @recipe_form = RecipeForm.new(params)
    if @recipe_form.update
      redirect_to recipes_path(@recipe_form.recipe.id)
    else
      render :back
    end
    # puts params.inspect
    # # ************
    # @recipe = Recipe.find(params[:id])
    # if @recipe.update(recipe_params)
    #   redirect_to recipes_show_path(@recipe)
    # else
    #   render 'edit'
    # end
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
