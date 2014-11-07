class RemovePreparationFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :preparation, :string
  end
end
