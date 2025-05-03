class CreateSongComposers < ActiveRecord::Migration[8.0]
  def change
    create_table :song_composers do |t|
      t.references :song, null: false, foreign_key: true
      t.references :composer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
