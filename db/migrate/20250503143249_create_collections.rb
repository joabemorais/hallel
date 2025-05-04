class CreateCollections < ActiveRecord::Migration[8.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.string :abbreviation
      t.string :edition
      t.string :collection_type

      t.timestamps
    end
  end
end
