class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :rating, null: false
      t.references :user, foreign_key: true, null: false
      t.references :recipe, foreign_key: true, null: false

      t.timestamps
    end
  end
end
