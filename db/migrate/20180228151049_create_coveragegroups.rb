class CreateCoveragegroups < ActiveRecord::Migration[5.1]
  def change
    create_table :coveragegroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
