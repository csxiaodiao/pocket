class CreateTagRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_relations do |t|
      t.references :tag, foreign_key: true
      t.references :album, foreign_key: true

      t.datetime :deleted_at

      t.timestamps
    end
    add_index :tag_relations, :deleted_at
  end
end
