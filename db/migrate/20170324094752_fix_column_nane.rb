class FixColumnNane < ActiveRecord::Migration[5.0]
  def change
  	rename_column :articles_tags, :article_id, :content_id
  end
end
