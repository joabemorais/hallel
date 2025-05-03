class CreateSongThemes < ActiveRecord::Migration[8.0]
  def change
    create_table :song_themes do |t|
      t.references :song, null: false, foreign_key: true
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
