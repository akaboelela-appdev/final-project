class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :body
      t.integer :company_id
      t.integer :user_id
      t.integer :role_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
