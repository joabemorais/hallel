class CreateServiceParts < ActiveRecord::Migration[8.0]
  def change
    create_table :service_parts do |t|
      t.string :name

      t.timestamps
    end
  end
end
