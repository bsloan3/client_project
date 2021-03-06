class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.integer :difficulty_level, null: false
      t.integer :prep_time, null: false
      t.string :directions, null: false
      t.string :category, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
