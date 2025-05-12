class AddRatingToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :rating, :float
  end
end
