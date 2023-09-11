class AddEmailToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :email, :string
  end
end
