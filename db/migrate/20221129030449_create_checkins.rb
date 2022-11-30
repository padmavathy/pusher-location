class CreateCheckins < ActiveRecord::Migration[5.2]
  def change
    create_table :checkins do |t|
      t.references :walk, foreign_key: true
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
