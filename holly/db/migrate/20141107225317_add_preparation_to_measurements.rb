class AddPreparationToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :preparation, :string
  end
end
