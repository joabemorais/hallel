class CreateWorshipServiceSongs < ActiveRecord::Migration[8.0]
  def change
    create_table :worship_service_songs do |t|
      t.references :worship_service, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.references :service_part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
