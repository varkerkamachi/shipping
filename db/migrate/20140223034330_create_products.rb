class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :width
      t.string :length
      t.integer :height
      t.integer :weight
      t.float :value

      t.timestamps
    end
  end
end
