class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.references :recipe, foreign_key: true, null: false

      t.timestamps
    end
  end
end
