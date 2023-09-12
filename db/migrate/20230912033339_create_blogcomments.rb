class CreateBlogcomments < ActiveRecord::Migration[7.0]
  def change
    create_table :blogcomments do |t|
      t.belongs_to :blog, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
