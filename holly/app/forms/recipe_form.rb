class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def recipe
    @recipe
  end

  def save
    @recipe = Recipe.create(title: @attributes[:title], directions: @attributes[:directions], image: @attributes[:image])
@recipe.inspect
    @attributes[:ingredients].each do |id|
      Measurement.create(ingredient_id: id, recipe_id: @recipe.id)
    end
    # @recipe.valid?
  end

end
