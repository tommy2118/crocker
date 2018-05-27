class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :order
      t.string :direction
      t.belongs_to :recipe, index: true

      t.timestamps
    end
  end
end
