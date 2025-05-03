class CreateSongCollections < ActiveRecord::Migration[8.0]
  def change
    create_table :song_collections do |t|
      t.references :song, null: false, foreign_key: true
      t.references :collection, null: false, foreign_key: true
      t.integer :item_number

      t.timestamps
    end
  end
end
