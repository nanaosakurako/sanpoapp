class CreateTimeframes < ActiveRecord::Migration[6.0]
  def change
    create_table :timeframes do |t|
      t.string :name

      t.timestamps
    end
  end
end
