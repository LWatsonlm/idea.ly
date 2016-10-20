class RenameColumnOnPost < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :title, :name
  end
end
