class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :amount
      t.string :measurement
      t.integer :calories
      t.references :recipe
    end
  end
end
