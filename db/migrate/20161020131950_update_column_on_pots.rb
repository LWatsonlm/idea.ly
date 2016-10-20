class UpdateColumnOnPots < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :name, :title
  end
end
