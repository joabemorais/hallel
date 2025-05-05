# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_05_03_143251) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "bible_reference_links", force: :cascade do |t|
    t.bigint "bible_reference_id", null: false
    t.string "source_type"
    t.integer "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bible_reference_id"], name: "index_bible_reference_links_on_bible_reference_id"
    t.index ["source_type", "source_id"], name: "index_bible_reference_links_on_source_type_and_source_id"
  end

  create_table "bible_references", force: :cascade do |t|
    t.string "start_book_name"
    t.integer "start_chapter"
    t.integer "start_verse"
    t.string "end_book_name"
    t.integer "end_chapter"
    t.integer "end_verse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.string "edition"
    t.string "collection_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "composers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occasions", force: :cascade do |t|
    t.string "title"
    t.string "weekday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_collections", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "collection_id", null: false
    t.integer "item_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_song_collections_on_collection_id"
    t.index ["song_id"], name: "index_song_collections_on_song_id"
  end

  create_table "song_composers", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "composer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["composer_id"], name: "index_song_composers_on_composer_id"
    t.index ["song_id"], name: "index_song_composers_on_song_id"
  end

  create_table "song_themes", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "theme_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_song_themes_on_song_id"
    t.index ["theme_id"], name: "index_song_themes_on_theme_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "musical_key"
    t.string "lyrics_url"
    t.string "chords_url"
    t.string "sheet_music_url"
    t.date "last_sung_at"
    t.integer "times_sung_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worship_service_roles", force: :cascade do |t|
    t.bigint "worship_service_id", null: false
    t.bigint "member_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_worship_service_roles_on_member_id"
    t.index ["role_id"], name: "index_worship_service_roles_on_role_id"
    t.index ["worship_service_id"], name: "index_worship_service_roles_on_worship_service_id"
  end

  create_table "worship_service_songs", force: :cascade do |t|
    t.bigint "worship_service_id", null: false
    t.bigint "song_id", null: false
    t.bigint "service_part_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_part_id"], name: "index_worship_service_songs_on_service_part_id"
    t.index ["song_id"], name: "index_worship_service_songs_on_song_id"
    t.index ["worship_service_id"], name: "index_worship_service_songs_on_worship_service_id"
  end

  create_table "worship_services", force: :cascade do |t|
    t.date "date"
    t.bigint "occasion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["occasion_id"], name: "index_worship_services_on_occasion_id"
  end

  add_foreign_key "bible_reference_links", "bible_references"
  add_foreign_key "song_collections", "collections"
  add_foreign_key "song_collections", "songs"
  add_foreign_key "song_composers", "composers"
  add_foreign_key "song_composers", "songs"
  add_foreign_key "song_themes", "songs"
  add_foreign_key "song_themes", "themes"
  add_foreign_key "worship_service_roles", "members"
  add_foreign_key "worship_service_roles", "roles"
  add_foreign_key "worship_service_roles", "worship_services"
  add_foreign_key "worship_service_songs", "service_parts"
  add_foreign_key "worship_service_songs", "songs"
  add_foreign_key "worship_service_songs", "worship_services"
  add_foreign_key "worship_services", "occasions"
end
