class CreateTestCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :test_centers do |t|
      t.string :location
      t.references :hospital_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
