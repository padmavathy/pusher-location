class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.string :name
      t.string :uuid

      t.timestamps
    end
  end
end
