require 'rails_helper'

describe "Recipe" do
  it "can be created with a title, direction, and image" do
    crepes = Recipe.new(title: "Crepes", directions: "Directions go here", image: "http://placekitten.com/200/300")
    expect(crepes.title).to eq "Crepes"
    expect(crepes.directions).to eq "Directions go here"
    expect(crepes.image).to eq "http://placekitten.com/200/300"
  end

  specify "can be searched for by its ingredients" do

    blueberries = Ingredient.create(name: "Blueberries")
    crepes = Recipe.create(title: "Crepes")
    crepes.add_ingredient(blueberries, { unit: "cup", quantity: "1" })

    search_results = Recipe.with_ingredient_named("Blueberries")

    expect( search_results ).to include( crepes )



    # # blueberries = Ingredient.new(:name => "Blueberries", :measurements => [Measurement.new(:unit => "cup", :quantity => "1")])
    # # # broccoli = Ingredient.create(name: "Broccoli")
    # blueberries = Ingredient.new(blueberries, :measurements => [Measurement.new(:unit => "cup", :quantity => "1")])
    # crepes = Recipe.create(title: "Crepes")
    #
    # crepes.add_ingredient(blueberries, { unit: "cup", quantity: "1" })
    # search_results = Recipe.with_ingredient_named("Blueberries")
    # expect( search_results ).to include( crepes )
    #
    # # crepes.ingredients.create(:name => blueberries => {:unit: "cup", :quantity "1"})
    #
    # crepes.ingredients << blueberries
    #
    # # omelettes = Recipe.create(title: "Omelettes")
    # #
    # # search_results = Recipe.with_ingredient_named("Blueberries")
    #
    # expect(search_results).to include("Crepes")
    # expect (search_results).to_not include("Omelettes")

    # Did anybody catch the syntax for passing parameters into a create method on an active record association? It was originally something like:    tofu = Ingredient.create(tofu, unit: "cup", quantity: "1")   but then they changed it. I don't think the changes got pushed.

  end

end
