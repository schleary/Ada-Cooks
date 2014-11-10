require 'rails_helper'

describe "Measurement" do
  it "can be created with a quantity, recipe_id, and ingredient_id" do
    join = Measurement.create(quantity: "4", recipe_id: 5, ingredient_id: 7)
    expect(join.quantity).to eq "4"
  end

  it "can have its quantity attribute edited" do
    join = Measurement.create(quantity: "4", recipe_id: 5, ingredient_id: 7)
    join.update(quantity: "7", recipe_id: 5, ingredient_id: 7)
    expect(join.quantity).to eq "7"
  end

  # it "can create a recipe_form with a recipe, ingredients, and quantity measurements" do
  #   # @recipe_form = RecipeForm.new("recipe"=>{"title"=>"Turtle", "ingredients"=>["1"], "measurements"=>["", "", "", "", "", ""], "ingredients_index"=>["1", "2", "3", "4", "5", "6"], "directions"=>"Stir Stuff", "image"=>"Leak"}, "commit"=>"Save", "controller"=>"recipes", "action"=>"create")
  #   # @recipe = Recipe.create(title: @attributes[:recipe][:title], directions: @attributes[:recipe][:directions], image: @attributes[:recipe][:image])
  #   #
  #   # expect (@recipe.directions).to eq "Stir Stuff"
  # end

end
