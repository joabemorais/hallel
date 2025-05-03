class CreateBibleReferenceLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :bible_reference_links do |t|
      t.references :bible_reference, null: false, foreign_key: true
      t.string :source_type
      t.integer :source_id

      t.timestamps
    end

    add_index :bible_reference_links, [ :source_type, :source_id ]
  end
end
