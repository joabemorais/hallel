class CreateBibleReferences < ActiveRecord::Migration[8.0]
  def change
    create_table :bible_references do |t|
      t.string :start_book_name
      t.integer :start_chapter
      t.integer :start_verse
      t.string :end_book_name
      t.integer :end_chapter
      t.integer :end_verse

      t.timestamps
    end
  end
end
