class CreateComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :components do |t|
      t.float :quantity
      t.string :measurement
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true

      t.timestamps
    end
  end
end
