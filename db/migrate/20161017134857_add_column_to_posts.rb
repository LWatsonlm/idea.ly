class AddColumnToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :tag, :string
  end
end
