class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :cate_id
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
