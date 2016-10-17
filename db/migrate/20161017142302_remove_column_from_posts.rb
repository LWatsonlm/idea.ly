class RemoveColumnFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :tag
  end
end
