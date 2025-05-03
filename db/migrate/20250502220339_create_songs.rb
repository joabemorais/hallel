class CreateSongs < ActiveRecord::Migration[8.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :musical_key
      t.string :lyrics_url
      t.string :chords_url
      t.string :sheet_music_url
      t.date :last_sung_at
      t.integer :times_sung_count

      t.timestamps
    end
  end
end
