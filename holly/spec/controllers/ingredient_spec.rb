require 'rails_helper'

describe "Ingredient" do
  it "can be created" do
    mango = Ingredient.new(name: "Mango")
    expect(mango.name).to eq "Mango"
  end

  it "can be edited" do
    carrot = Ingredient.new(name: "Carrot")
    carrot.update(name: "Carrots")
    expect(carrot.name).to eq "Carrots"
  end

  it "can be deleted" do
    cucumbers = Ingredient.new(name: "Cukes")
    cucumbers.destroy
    expect(cucumbers.id).to eq nil
  end

end
