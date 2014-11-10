class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def recipe
    @recipe
  end

  def save
    puts "We're here!"
    puts @attributes[:recipe][:title].inspect
    @recipe = Recipe.create(title: @attributes[:recipe][:title], directions: @attributes[:recipe][:directions], image: @attributes[:recipe][:image])
    puts @recipe.inspect
    @attributes[:recipe][:ingredients].each do |id|
      measurement_index = @attributes[:recipe][:ingredients_index].find_index(id)
      puts @attributes[:recipe][:measurements][measurement_index]
      Measurement.create(ingredient_id: id, recipe_id: @recipe.id, quantity: @attributes[:recipe][:measurements][measurement_index])
      # , preparation: preparation, quantity: quantity, unit: unit
    end
    # @recipe.valid?
  end

  def update
    @recipe = Recipe.find(@attributes[:id])
    @recipe.measurements.each do |measurement|
      measurement.destroy
    end
    @recipe = Recipe.update(@recipe.id, {title: @attributes[:recipe][:title], directions: @attributes[:recipe][:directions], image: @attributes[:recipe][:image]})
    # put a check here
    @attributes[:recipe][:ingredients].each do |id|
      measurement_index = @attributes[:recipe][:ingredients_index].find_index(id)
      puts @attributes[:recipe][:measurements][measurement_index]
      Measurement.create(ingredient_id: id, recipe_id: @recipe.id, quantity: @attributes[:recipe][:measurements][measurement_index])
      # , preparation: preparation, quantity: quantity, unit: unit
    end

  end

end
