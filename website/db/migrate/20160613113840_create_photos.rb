class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.references :album, foreign_key: true
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :photos, :deleted_at
  end
end
