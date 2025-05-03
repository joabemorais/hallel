class CreateWorshipServices < ActiveRecord::Migration[8.0]
  def change
    create_table :worship_services do |t|
      t.date :date
      t.references :occasion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
