class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content

      t.timestamps
    end
    add_column :posts, :user_id, :integer
    add_column :posts, :area_id, :integer
    add_column :posts, :timeframe_id, :integer
  end
end
