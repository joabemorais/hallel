json.extract! song, :id, :title, :musical_key, :lyrics_url, :chords_url, :sheet_music_url, :last_sung_at, :times_sung_count, :created_at, :updated_at
json.url song_url(song, format: :json)
