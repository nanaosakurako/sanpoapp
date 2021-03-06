class AddPictureNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :picture_name, :string
  end
end
