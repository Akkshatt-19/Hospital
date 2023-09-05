class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :random_id
      t.string :disease
      t.references :user, null: false, foreign_key: true
      t.references :test_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
