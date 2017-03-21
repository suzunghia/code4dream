class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :display_name
      t.integer :lft
      t.integer :rgt

      t.timestamps
    end
  end
end
