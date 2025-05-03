class CreateOccasions < ActiveRecord::Migration[8.0]
  def change
    create_table :occasions do |t|
      t.string :title
      t.string :weekday

      t.timestamps
    end
  end
end
