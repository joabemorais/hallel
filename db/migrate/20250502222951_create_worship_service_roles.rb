class CreateWorshipServiceRoles < ActiveRecord::Migration[8.0]
  def change
    create_table :worship_service_roles do |t|
      t.references :worship_service, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
