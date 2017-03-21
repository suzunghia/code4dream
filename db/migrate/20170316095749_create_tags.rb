class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.text :display_name

      t.timestamps
    end

    create_table :articles_tags, id: false do |t|
      t.integer :article_id
      t.integer :tag_id	
    end
  end
end
