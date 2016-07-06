class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.string :author
      t.decimal  :price, precision: 10, scale: 2, default: 0.00
      t.boolean :display, default: true
      t.integer :status
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :albums, :deleted_at
  end
end

