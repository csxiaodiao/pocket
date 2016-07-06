class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :tags, :deleted_at
  end
end
