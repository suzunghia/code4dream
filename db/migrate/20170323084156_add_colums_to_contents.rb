class AddColumsToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :author, :string
    add_column :contents, :user_id, :string
    add_column :contents, :permalink, :string
    add_column :contents, :state, :string
    add_column :contents, :published_at, :timestamp
  end
end
