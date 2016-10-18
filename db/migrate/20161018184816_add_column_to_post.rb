class AddColumnToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :topic, :text
  end
end
