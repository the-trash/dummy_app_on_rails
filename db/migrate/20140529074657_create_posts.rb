class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :raw_content
      t.string :state, default: :draft

      t.timestamps
    end
  end
end
