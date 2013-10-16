class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.text :content
      t.string :title
      t.timestamps
    end
  end
end
