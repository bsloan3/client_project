class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :item, null: false
      t.integer :amount, null: false
      t.string :measurement, null:false
      t.references :recipe, foreign_key: true, null: false

      t.timestamps
    end
  end
end
