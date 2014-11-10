require 'rails_helper'

describe "Recipe" do
  it "can be created with a title, direction, and image" do
    crepes = Recipe.new(title: "Crepes", directions: "Directions go here", image: "http://placekitten.com/200/300")
    expect(crepes.title).to eq "Crepes"
    expect(crepes.directions).to eq "Directions go here"
    expect(crepes.image).to eq "http://placekitten.com/200/300"
  end

  it "can be edited" do
    crepes = Recipe.new(title: "Crepes", directions: "Directions go here", image: "http://placekitten.com/200/300")
    crepes.update(title: "Toadstools", directions: "Directions go here", image: "http://placekitten.com/200/300")
    expect(crepes.title).to eq "Toadstools"
  end

  it "can be deleted" do
    falafel = Recipe.new(title: "Falafel")
    falafel.destroy
    expect(falafel.id).to eq nil
  end

  # render_views
  #
  # it "allows us to search for recipes by name" do
  #   carrot = Ingredient.create(name: "Carrots")
  #   soup = Recipe.create(title: "Soup")
  #   soup.add_ingredient(carrot, { unit: "cup", quantity: "1" })
  #
  #   post :index, ingredient_name: 'Carrots'
  #
  #   expect( response.body ).to match /soup/
  # end

end
