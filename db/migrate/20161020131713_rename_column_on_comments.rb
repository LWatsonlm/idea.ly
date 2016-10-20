class RenameColumnOnComments < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :title, :name
  end
end
