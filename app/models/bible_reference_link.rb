class BibleReferenceLink < ApplicationRecord
  belongs_to :bible_reference
  belongs_to :source, polymorphic: true
end
