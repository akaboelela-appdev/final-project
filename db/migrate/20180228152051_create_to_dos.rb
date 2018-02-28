class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.text :body
      t.integer :user_id
      t.integer :role_id
      t.boolean :done

      t.timestamps
    end
  end
end
