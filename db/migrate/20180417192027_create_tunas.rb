class CreateTunas < ActiveRecord::Migration[5.1]
  def change
    create_table :tunas do |t|
      t.string :origin
      t.references :Fish, foreign_key: true

      t.timestamps
    end
  end
end
