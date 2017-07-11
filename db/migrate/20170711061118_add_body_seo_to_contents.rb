class AddBodySeoToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :body_seo, :text
  end
end
