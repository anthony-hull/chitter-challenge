class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :peeps do |t|
      t.string :content
      t.integer :likes, :default => 0
      t.timestamps null: false
    end
  end

  def down
    drop_table :peeps
  end
end
