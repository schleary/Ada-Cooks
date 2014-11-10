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

end
