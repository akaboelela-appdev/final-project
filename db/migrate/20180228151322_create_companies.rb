class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo_src
      t.integer :industry_id

      t.timestamps
    end
  end
end
