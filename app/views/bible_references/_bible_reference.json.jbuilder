json.extract! bible_reference, :id, :start_book_name, :start_chapter, :start_verse, :end_book_name, :end_chapter, :end_verse, :created_at, :updated_at
json.url bible_reference_url(bible_reference, format: :json)
