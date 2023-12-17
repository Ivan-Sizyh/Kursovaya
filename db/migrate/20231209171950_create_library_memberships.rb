# frozen_string_literal: true

class CreateLibraryMemberships < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :library_memberships do |t|
      t.references :library, null: false, foreign_key: true
      t.references :reader, null: false, foreign_key: true

      t.timestamps
    end
  end
end
