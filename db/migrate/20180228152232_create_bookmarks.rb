class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.integer :role_id
      t.integer :user_id
      t.integer :priority_id
      t.integer :status_id

      t.timestamps
    end
  end
end
