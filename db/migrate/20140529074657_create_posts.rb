class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :raw_content
      t.string :state, default: :draft
      t.integer :view_count, default: 0

      t.timestamps
    end
  end
end
