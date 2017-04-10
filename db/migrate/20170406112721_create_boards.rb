class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content
      t.integer :cate_id

      t.timestamps null: false
    end
  end
end
