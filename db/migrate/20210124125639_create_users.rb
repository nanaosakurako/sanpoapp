class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_column :users, :password_digest, :string
  end
end
