json.extract! collection, :id, :name, :abbreviation, :edition, :collection_type, :created_at, :updated_at
json.url collection_url(collection, format: :json)
