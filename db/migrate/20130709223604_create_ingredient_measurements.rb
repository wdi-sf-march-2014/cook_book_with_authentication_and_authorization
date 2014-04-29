class CreateIngredientMeasurments < ActiveRecord::Migration
  def change
    create_table :ingredient_measurments do |t|
      t.references :recipe, index: true
      t.references :ingredient, index: true
      t.string     :measurement

      t.timestamps
    end
  end
end
