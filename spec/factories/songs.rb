FactoryBot.define do
  factory :song do
    title { "Be Thou My Vision" }
    musical_key { "D" }
    lyrics_url { "http://example.com/lyrics" }
    chords_url { "http://example.com/chords" }
    sheet_music_url { "http://example.com/sheet_music" }
    last_sung_at { Date.today }
    times_sung_count { 1 }
  end
end
