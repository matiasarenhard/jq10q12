class CreateSharks < ActiveRecord::Migration[5.1]
  def change
    create_table :sharks do |t|
      t.string :color
      t.references :fish, foreign_key: true

      t.timestamps
    end
  end
end
