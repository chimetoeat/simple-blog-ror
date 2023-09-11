class RenameUserToUsername < ActiveRecord::Migration[7.0]
  def change
    rename_column :blogs, :name, :username
  end
end
