class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :protein
      t.integer :cook_method
      t.integer :cook_time
      t.integer :prepare_time
      t.integer :diet_type

      t.timestamps
    end
  end
end
