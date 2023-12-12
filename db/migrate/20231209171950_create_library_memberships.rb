class CreateLibraryMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :library_memberships do |t|
      t.references :library, null: false, foreign_key: true
      t.references :reader, null: false, foreign_key: true

      t.timestamps
    end
  end
end
