class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :title
      t.integer :city_id
      t.integer :coveragegroup_id
      t.integer :company_id
      t.date :due_date

      t.timestamps
    end
  end
end
