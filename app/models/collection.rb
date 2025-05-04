class Collection < ApplicationRecord
  has_many :collection_items
  has_many :songs, through: :collection_items
end
