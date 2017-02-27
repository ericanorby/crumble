class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :photo_url
      t.integer :servings
      t.decimal :total_cost
      t.decimal :cost_per_serving
      t.integer :cal_per_serving
      t.string :difficulty
      t.string :directions
    end
  end
end
