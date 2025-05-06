class SongCollection < ApplicationRecord
  validates :item_number, uniqueness: { scope: :collection_id }

  belongs_to :song
  belongs_to :collection
end
